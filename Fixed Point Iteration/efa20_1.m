%Efolio A - 2000809
%Script para exercício 1.2

%%%%%%%%%%%%%%%%%%%%%%%%
%% Ficheiro efa20_1.m %%
%%%%%%%%%%%%%%%%%%%%%%%%

clc
close all
clear all


%Cria pelo menos 100 pontos entre 0 e 1, inclusive, neste caso 101 pontos
x=0:0.01:1;

%Valor de g(x) para os valores criados para a variável x
g = exp(-x).*(cos(x))-1.1.*x;

%Valor de f(x) para os valores criados para a variável x
f = exp(-x).*cos(x)./1.1;

%Valor de f'(x) para os valores criados para a variável x
fderivada = exp(-x).*(-cos(x)-sin(x))./1.1;

%fderivada = derivadaf(x);
maximo = max(fderivada);

printf("L = max|f'(x)| = %0.5g\n",maximo);

%Plotting para os 3 gráficos pedidos, com pelo menos 100 pontos,
%legenda, título, grelha, e etiqueta no eixo das abcissas


%x,g(x)
figure(1);
plot(x,g);
xlabel("Domínio da função -> [0,1]");
grid on;
title( "Gráfico do par {x,g(x)}");
legend( "y=g(x)","location", "northeastoutside");


%x,[x,f(x)]
figure(2);
plot(x,[x;f]');
xlabel("Domínio da função -> [0,1]");
grid on;
title( "Gráfico do par {x,[x,f(x)]}");
legend( "y=x","y=f(x)","location", "northeastoutside");


%x,f'(x)
figure(3);
plot(x,fderivada);
xlabel("Domínio da função -> [0,1]");
grid on;
title( "Gráfico do par {x,f'(x)}");
legend( "y=f'(x)","location", "northeastoutside");

%%Dar plot nos 3, 1 a 1
