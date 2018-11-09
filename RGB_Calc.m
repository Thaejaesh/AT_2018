clear;
clc;
close all;

Y = 200;
U = 131;
V = 126;

a = 76284 * (Y-16);

R = floor((1/65536)* (a + 104595*(V-128)));
B = floor((1/65536)* (a + 132251*(U-128)));
G = floor((1/65536)* (a - 25624*(U-128) - 53281*(V-128)));

disp(dec2hex(R))
disp(dec2hex(G))
disp(dec2hex(B))