clc;
clear;
close all;

% Cria vetores
y = 0:1:255;
x = sin(y);
u = uint8((x+1)*128);
v = uint8(255-y);

% Plota gráficos
figure;

subplot(2,2,1); % subplot(linhas, colunas, posição)
plot(u);
title('Vetor u');

subplot(2,2,2); % subplot(linhas, colunas, posição)
plot(v);
title('Vetor v');

subplot(2,2,3); % subplot(linhas, colunas, posição)
plot(uint16(u).*uint16(v))
title('Produto elemento a elemento (u .* v)');
