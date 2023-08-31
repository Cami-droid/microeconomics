% Valores de x1 y x2 para la cuadrícula
x1_vals = linspace(0, 30, 100); % Ejemplo: de 0 a 30 con 100 puntos
x2_vals = linspace(0, 30, 100); % Ejemplo: de 0 a 30 con 100 puntos
% Valores de x1 y x2 para la cuadrícula
x1_vals = linspace(0, 30, 100); % Ejemplo: de 0 a 30 con 100 puntos
x2_vals = linspace(0, 30, 100); % Ejemplo: de 0 a 30 con 100 puntos

% Crear una cuadrícula de puntos (x1, x2)
[x1_grid, x2_grid] = meshgrid(x1_vals, x2_vals);

% Coeficientes del plano
a = 2;
b = 1;
c = 5;
d = 80;

% Calcular los valores correspondientes de x3 para cada punto de la cuadrícula
x3_grid = max((d - a*x1_grid - b*x2_grid) / c, 0); % No permitir valores negativos

% Graficar el plano
surf(x1_grid, x2_grid, x3_grid, 'FaceColor', 'blue', 'FaceAlpha', 0.5); hold on;
xlabel('x1');
ylabel('x2');
zlabel('x3');
title('Gráfico del plano 3D: 2*x1 + 1*x2 + 5*x3 = 80 (Budget 1)');

% Referencia clara al punto de origen
plot3(0, 0, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); 

% Punto (20, 5, 7) para Budget 1
plot3(20, 5, 7, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g');

% Coeficientes del plano del budget2
a2 = 3;
b2 = 1/2;
c2 = 5;
d2 = 80;

% Calcular los valores correspondientes de x3 para cada punto de la cuadrícula
x3_grid_bdg2 = max((d2 - a2*x1_grid - b2*x2_grid) / c2, 0); % No permitir valores negativos

% Graficar el plano
surf(x1_grid, x2_grid, x3_grid_bdg2, 'FaceColor', 'red', 'FaceAlpha', 0.5);

% Punto (15, 10, 6) para Budget 2
plot3(15, 10, 6, 'mo', 'MarkerSize', 8, 'MarkerFaceColor', 'm');

legend('Budget 1', 'Origen', '(20,5,7)', 'Budget 2', '(15,10,6)');
hold off; % Restaurar el comportamiento de trazado
