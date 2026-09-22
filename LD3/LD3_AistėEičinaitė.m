%10var
%1.
%a)
x = -pi:0.1:pi;
f = tan(sin(x)) + sin(tan(x));

figure;
plot(x, f, 'y');
xlabel('x');
ylabel('f(x)');
title('f(x) = tan(sin(x)) + sin(tan(x))');
grid on;
legend('f(x)');

%b)
x = -5:0.1:5;
f1 = exp(-0.5*x);
f2 = sin(x);

figure;
semilogy(x, f1);
hold on;
plot(x, f2);
xlabel('x');
ylabel('f(x)');
title('Funkcijų grafikai');
grid on;
legend('f(x) = e^{-0.5x}', 'f(x) = sin(x)');

%2.
%a)
A = rand(6,7);

figure;
area(A);
xlabel('x');
ylabel('y');
title('Ploto diagrama');
grid on;

%b)
figure;
mesh(A);
xlabel('x');
ylabel('y');
zlabel('A');
title('Paviršiaus diagrama');
grid on;
