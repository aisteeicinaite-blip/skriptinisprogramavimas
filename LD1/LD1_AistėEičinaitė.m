% Aistė Eičinaitė, EEf-25/2, 2026-09-08
%
% Paprastas skriptas
%

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-X-]')

% 8 uzd
help sin 
help plot
help title

doc sin  
doc plot
doc title

docsearch sin
docsearch plot
docsearch title

% 9 uzd
% linspace - tolygiai išdėstytų skaičių sekos (vektoriaus) generavimas
% y = linspace(x1, x2)- generuoja 50 tolygiai 
% išdėstytų taškų
% size - masyvo arba matricos matmenų (dydžio) nustatymas
% max - didžiausios reikšmės ir jos indekso paieška
