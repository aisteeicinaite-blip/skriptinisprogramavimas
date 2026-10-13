%16 variantas
%2 
clc;
clear;
close all;

global x z

x = 0:0.1:20;

funkcija1;

plot(x, z, 'b-.o');
grid on;
title('Funkcijos z = x^2 / 2 grafikas');
xlabel('x');
ylabel('z');
