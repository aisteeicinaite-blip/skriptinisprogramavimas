% 7 variantas
% 1 uzd
% a)
[x,y] = meshgrid(-1:0.02:1);

z = exp(r.^2);
r = sqrt(x.^2 + y.^2);

figure;
surf(x,y,z);
colormap cool;
shading interp;
view(30,30);

xlabel('x');
ylabel('y');
zlabel('z');
title('z = e^{r^2}');
grid on;

%b
[x,y] = meshgrid(-2:0.02:1);

z = 1 - 2*x.^2 - 3*y.^2;

figure;
surf(x,y,z);
colormap cool;
shading interp;
view(45,45);

xlabel('x');
ylabel('y');
zlabel('z');
title('f(x,y) = 1 - 2x^2 - 3y^2');
grid on;

%papildoma, 24 variantas
[x,y] = meshgrid(-2:0.02:2);
z = 1 - (x.^2 + y.^2);

figure;

subplot(1,3,1);
surf(x,y,z);
colormap(gca, parula);
shading interp;
title('parula');

subplot(1,3,2);
surf(x,y,z);
colormap(gca, cool);
shading interp;
title('cool');

subplot(1,3,3);
surf(x,y,z);
colormap(gca, winter);
shading interp;
title('winter');
