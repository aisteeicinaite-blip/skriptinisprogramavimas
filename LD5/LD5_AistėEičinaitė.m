%7 variantas 

% 1 uzd
% a)
C = {'Aistė Eičinaitė', '2006-06-13', '+37061945726', ...
    [ 10 9 10 10 9 10 9; 
    9 8 9 10 10 10 9]};

% b)
D = {'Gabrielė Gurskaitė', '2006-01-12', '+37061161861', ...
    [10 10 10 10 10 10 10;
    9 9 10 9 10 10 10]};

CD = [C; D];

cellplot(CD);

% 2 uzd

m_senas = [];

while true
    m = input('Įveskite m: ');

    if any(m_senas == m)
        break;
    end

    if m < 0
        f = m^2 + 1;
    elseif m == 0
        f = (m + 1) / 2;
    else
        f = m^2 - 1;
    end

    disp(['f(m) = ', num2str(f)]);

    m_senas = [m_senas m];
end

%papildoma 10 variantas

a = [];
b = [];
count = 0;

while count < 3
    x = round(rand*9);
    y = round(rand*11);

    a = [a x];
    b = [b y];

    if x > y
        count = count + 1;
    else
        count = 0;
    end
end

plot(a, '-');
hold on;
plot(b, '-');
hold off;

legend('Pirmasis skaicius', 'Antrasis skaicius');
xlabel('Generavimo numeris');
ylabel('Skaiciaus reiksme');
grid on;
