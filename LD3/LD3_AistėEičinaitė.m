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

%papildoma uzd 21 var
rng(42);

%duomenys
A = 8;
f = 5;
sigma = 1.8;
U1 = 5;
U2 = 3;
t = 0:0.005:1.5;

n = sigma * randn(size(t));
s = A * cos(2*pi*f*t) + n;

s_atrinktas = s(s > U1);

s_filtruotas = s;
s_filtruotas(abs(s) < U2) = 0;

figure('Name','Signalų grafinis atvaizdavimas');

%a)
subplot(1,2,1);

plot(t,s,'--','LineWidth',1);
hold on;
plot(t,s_filtruotas,':','LineWidth',1);

yline(U1,'--','Color',[0.5 0 0.5],'LineWidth',1);
yline(U2,'--','Color',[0.5 0 0.5],'LineWidth',1);
yline(-U2,'--','Color',[0.5 0 0.5],'LineWidth',1);

xlabel('Laikas, s');
ylabel('Įtampa, V');

title('Pradinis ir filtruotas signalai', ...
    'Color',[0.5 0 0.5], ...
    'FontSize',14);

legend('Pradinis signalas','Filtruotas signalas',...
    'U_1','U_2','-U_2','Location','best');

grid on;
xlim([0 1.5]);


%b)
subplot(1,2,2);

ind = s > U1;

plot(t(ind),s(ind),'o','LineWidth',1);
hold on;

max_atrinktas = max(s_atrinktas);
min_atrinktas = min(s_atrinktas);

t_atrinktas = t(ind);

t_max = t_atrinktas(s_atrinktas == max_atrinktas);
t_min = t_atrinktas(s_atrinktas == min_atrinktas);

plot(t_max,max_atrinktas,'g*','MarkerSize',10);
plot(t_min,min_atrinktas,'r*','MarkerSize',10);

xlabel('Laikas, s');
ylabel('Įtampa, V');

title('Reikšmės, viršijančios U_1', ...
    'Color',[0.5 0 0.5], ...
    'FontSize',14);

legend('Atrinktos reikšmės','Maksimali reikšmė',...
    'Minimali reikšmė','Location','best');

grid on;
xlim([0 1.5]);
