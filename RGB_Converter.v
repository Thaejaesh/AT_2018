/*
Copyright by Henry Ko and Nicola Nicolici
Developed for the Digital Systems Design course (COE3DQ4)
Department of Electrical and Computer Engineering
McMaster University
Ontario, Canada
*/

`timescale 1ns/100ps
`default_nettype none


module RGB_Converter (
		/////// board clocks                      ////////////
		input logic CLOCK_50_I,                   // 50 MHz clock

		/////// Top level module
		input logic enable_RGB,
		input logic resetn,
		
		input logic  [31:0] Y_in_RGB,
		input logic [31:0] U_in_RGB,
		input logic [31:0] V_in_RGB,
		
		output logic [7:0] R_buff,
		output logic [7:0] G_buff,
		output logic  [7:0] B_buff,


		output logic  [7:0] R_buffer,
		output logic  [7:0] G_buffer,
		output logic  [7:0] B_buffer

				
);



//logic  [31:0] y,u,v; // Values of Y,U,V after subtraction portion of conversion
logic  [31:0] mult_in; // Value to feed logic [31:0]o multipliers
logic  [63:0] mult_out_long [1:0]; //Values out of the multipliers
logic  [31:0] mult_out [1:0]; //Values out of the multipliers
logic  [31:0] coeff [1:0]; //Coefficients to multiply the y,u,v values
logic  [31:0] R_acc,G_acc,B_acc;//,R_buff,G_buff,B_buff;
logic [1:0] sel_rgb_mul;

logic  [31:0] R_prebuff, G_prebuff, B_prebuff;

/* assign y = Y_in_RGB - 32'd16;
assign u = U_in_RGB - 32'd128;
assign v = V_in_RGB - 32'd128; */

always_comb begin
	
	case(sel_rgb_mul) 
	 2'b00: begin
		mult_in = Y_in_RGB - 32'd16;
		coeff[1] = 32'd76284;
		coeff[0] = 32'd76284;
	 end
	 2'b01: begin
		mult_in = V_in_RGB - 32'd128;
		coeff[1] = 32'd104595;
		coeff[0] = 32'd53281;
	 end
	 
	 2'b10: begin
		mult_in = U_in_RGB - 32'd128;
		coeff[1] = 32'd132251;
		coeff[0] = 32'd25624;
	 end
	 
	 default: begin
		mult_in = Y_in_RGB - 32'd16;;
		coeff[1] = 32'd76284;
		coeff[0] = 32'd76284;
	 end
	
	endcase
	
end

assign mult_out_long[1] = mult_in * coeff[1]; //Calculate R and B
assign mult_out_long[0] = mult_in * coeff[0]; //Calculate G

assign mult_out[1] = mult_out_long[1][31:0];
assign mult_out[0] = mult_out_long[0][31:0];

//DONE ON SECOND LAST COUNT OF sel_rgb_mul
assign R_prebuff = R_acc + mult_out[1];
assign R_buffer =  R_prebuff[23:16];//(R_acc + mult_out[1]); //76284*(Y-16) + 0*(U-128) + 104595*(V-128)


//DONE ON LAST COUNT OF sel_rgb_mul
assign B_prebuff = B_acc + mult_out[1];	
assign B_buffer =  B_prebuff[23:16];

assign G_prebuff = G_acc - mult_out[0];
assign G_buffer =  G_prebuff[23:16];



always_ff @ (posedge CLOCK_50_I or negedge resetn) begin
	if (~resetn) begin
		R_acc <= 32'd0;
		G_acc <= 32'd0;
		B_acc <= 32'd0;
		R_buff <= 32'd0;
		G_buff <= 32'd0;
		B_buff <= 32'd0;
		sel_rgb_mul <= 2'b00;
	end else begin
		$write("\t Y %d \n", Y_in_RGB );
		$write("\t U %d \n", U_in_RGB );
		$write("\t V %d \n", V_in_RGB );

		
		
		$write("\t mult_in %d \n", mult_in);
		$write("\t coeff[1] %d \n", coeff[1]);
		$write("\t coeff[0] %d \n", coeff[0]);
		
		
		$write("\t mult_out[1] %d \n", mult_out[1]);
		$write("\t mult_out[0] %d \n", mult_out[0]);
		$write("\t sel_rgb_mul %d \n", sel_rgb_mul);
		$write("\t enable_RGB %d \n", enable_RGB);
		
		$write("\t R_buff %d  \t %h \n",  R_buff, R_buff );
		$write("\t G_buff %d  \t %h \n",  G_buff, G_buff );
		$write("\t B_buff %d  \t %h \n",  B_buff, B_buff );
		case (sel_rgb_mul) 
		
			2'b00: begin //Y
				R_acc <= mult_out[1]; //76284*(Y-16)
				B_acc <= mult_out[1]; //76284*(Y-16)
				G_acc <= mult_out[1]; //76284*(Y-16)	
				sel_rgb_mul <= (enable_RGB)? 2'b01 : sel_rgb_mul;
			end
			
			2'b01: begin //V
				//R_acc <= R_acc + mult_out[1]; //76284*(Y-16) + 104595*(V-128)
				//Finish Calculating R
				R_buff <=  R_buffer;//(R_acc + mult_out[1]); //76284*(Y-16) + 0*(U-128) + 104595*(V-128)
				
				$write("\t R_prebuff  %h \n",  R_prebuff[23:16]);
				B_acc <= B_acc;// + mult_out[1]; //76284*(Y-16) + 0*(V-128)
				G_acc <= G_acc - mult_out[0]; //76284*(Y-16) - 25624*(U-128)
				sel_rgb_mul <= (enable_RGB)? 2'b10 : sel_rgb_mul;
				$write("\t R DONE \n" );
			end 
			
			2'b10: begin //U
			///////////////////////////DO CLIPPING
					//R_buff <=  R_prebuff[23:16];//(R_acc + mult_out[1]); //76284*(Y-16) + 0*(U-128) + 104595*(V-128)
				B_buff <=  B_prebuff[23:16];//(B_acc); 			  //76284*(Y-16) + 132251*(U-128) + 0*(V-128)
				G_buff <=  G_prebuff[23:16];//(G_acc - mult_out[0]); //76284*(Y-16) - 25624*(U-128) - 53281*(V_128)
				sel_rgb_mul <= (enable_RGB)? 2'b00 : sel_rgb_mul;
				$write("\t GB DONE \n" );
				$write("\t R_prebuff  %h \n",  R_prebuff[23:16]);
				$write("\t G_prebuff  %h \n",  G_prebuff[23:16]);
				$write("\t B_prebuff  %h \n",  B_prebuff[23:16]);
				$write("\n\n\n\n Calibrate RGB_Converter \n\n\n\n");
			end
			
			default: begin
				R_acc <= 32'd0;
				G_acc <= 32'd0;
				B_acc <= 32'd0;
				R_buff <= 32'd0;
				G_buff <= 32'd0;
				B_buff <= 32'd0;	
				sel_rgb_mul <= 2'b00;
			end
		endcase
	end
end



endmodule
