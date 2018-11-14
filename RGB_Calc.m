clear;
%clc;
close all;

Y = 79;
U = 127;
V = 121;

yuv = [Y;U;V];
const = [16;128;128];
c = [76284, 0, 104595; 76284, -25624, -53281; 76284, 132251, 0];

rgb = dec2hex( floor( (1/65536)*(c*(yuv-const)) ) )

% a = 76284 * (Y-16);
% 
% R = floor((1/65536)* (a + 104595*(V-128)));
% B = floor((1/65536)* (a + 132251*(U-128)));
% G = floor((1/65536)* (a - 25624*(U-128) - 53281*(V-128)));
% 
% disp(dec2hex(R))
% disp(dec2hex(G))
% disp(dec2hex(B))


