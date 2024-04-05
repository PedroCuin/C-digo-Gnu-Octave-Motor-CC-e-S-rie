% Limpeza do ambiente
clear
clc

% Definição dos dados
V = [100, 140, 180, 220];
I = [0.40, 0.35, 0.30, 0.25, 0.20];
w = [733, 785, 862, 975, 1165;
     1040, 1140, 1273, 1450, 1667;
     1333, 1428, 1562, 1785, 2110;
     1631, 1798, 2015, 2260, 2603];

% Plot w por V com parâmetro I
figure;
hold on;
for i = 1:5
    plot(V, w(:,i), 'o-');
end
hold off;
xlabel('Tensão (V)');
ylabel('Velocidade (rpm)');
title('Velocidadde por tensão');
legend('0.40 A', '0.35 A', '0.30 A', '0.25 A', '0.20 A');
grid();

% Plot w por I com parâmetro V
figure;
hold on;
for v = 1:length(V)
    plot(I, w(v,:), 'o-');
end
hold off;
xlabel('Corrente (A)');
ylabel('Velocidade (rpm)');
title('Velocidade por corrente');
legend('100 V', '140 V', '180 V', '220 V');
grid();

