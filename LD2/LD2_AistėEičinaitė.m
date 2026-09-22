%10 variantas
%1
%a)
a = (-5:0.6:5)'
%b)
b = sqrt(a)
%c)
c = b(end)
%d)
d = (a .* b) / c

%2
%a) 
X = [2*sqrt(2), log(2);
    2^5, 2*pi;
    3*sqrt(2), exp(2)]
%b) 
X_m2 = [2*sqrt(2), 5, 2^(-2)]';
A = [X(:,1), X_m2, X(:,2)]
%c)
d = det(A)

%3
%duomenys
A = 8; f = 5; sigma = 1.8; U1 = 5; U2 = 3; t = 0:0.005:1.5;
n = sigma * randn(size(t));
s = A * cos(2*pi*f*t) + n;
%a)
s_atrinktas = s(s > U1);
%b)
s_filtruotas = s;
s_filtruotas(abs(s) < U2) = 0;
%c)
dydis_nefiltruoto = length(s);
%d)
dydis_atrinktu = length(s_atrinktas);
%e)
max_filtruotas = max(s_filtruotas);
min_filtruotas = min(s_filtruotas);

%papildoma 21 variantas
A = [0 1 0 2 3 0 4;
     0 0 0 0 0 0 0;
     0 5 0 6 7 0 8;
     0 9 0 1 2 0 3;
     0 0 0 0 0 0 0;
     0 4 0 5 6 0 7];
Eilutes = any(A ~= 0, 2);
Stulpeliai = any(A ~= 0, 1);
B = A(Eilutes, Stulpeliai)
