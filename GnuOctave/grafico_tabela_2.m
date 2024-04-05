% Limpando o console
clear
clc

V = [20, 40, 60, 80, 100, 120];
I = [1.52; 1.68; 1.86; 2.10; 2.23;  2.38];
w = [506, 1064, 1544, 1965, 2327, 2646];


% Plot w por V com parâmetro I
figure;
hold on;
plot(V, w, 'r-');
hold off;
xlabel('Tensão (V)');
ylabel('Velocidade (rpm)');
title('Velocidade por tensão');
grid();

% Plot w por T
figure;
hold on;
T = (V * I) ./ (w *(2*pi/60))
plot(T, w, 'r-');
hold off;
xlabel('Torque [Nm] (V*I/(n*(2pi/60))');
ylabel('Velocidade (rpm)');
title('Velocidade por Torque');
grid();

