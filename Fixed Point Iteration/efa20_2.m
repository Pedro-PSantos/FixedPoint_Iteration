%Efolio A - 2000809
%Script para exercício 1.3

%%%%%%%%%%%%%%%%%%%%%%%%
%% Ficheiro efa20_2.m %%
%%%%%%%%%%%%%%%%%%%%%%%%

clc
close all
clear all


%Funcao iteradora
f = @(x) exp(-x)*cos(x)/1.1;

%Numero máximo de iterações
kmax = 100;

%L = max|f'(x)|, usando x=0, x∈[0,1]
L = abs(exp(0)*(-cos(0)-sin(0))/1.1);

%Valor inicial de x0 para a primeira solução
x0 = 0;

%Criterio de Paragem com erro absoluto máximo desejado, para ambos os casos
dxd = (1-L)/L*0.5e-6; %solução (0.dddddddd) c/ 6 decimais significativos

%Obtenção da primeira solução usando o algoritmo de ponto fixo
[r1, dx1, n1, v1] = algoritmopontofixo(f,x0,dxd,kmax,L);
%r1 - resultado da primeira solução
%dx1 - erro absoluto |x(n)-x(n-1)| da primeira solução
%n1 - número de iterações do algoritmo de ponto fixo da primeira solução

%Valor inicial de x0 para a segunda solução
x0 = 0.8;

%Obtenção da segunda solução usando o algoritmo de ponto fixo
[r2, dx2, n2, v2] = algoritmopontofixo(f,x0,dxd,kmax,L);
%r1 - resultado da segunda solução
%dx1 - erro absoluto |x(n)-x(n-1)| da segunda solução
%n1 - número de iterações do algoritmo de ponto fixo da segunda solução

%Impressão dos resultados obtidos para a primeira e segunda solução, respectivamente
fprintf("A solucao para x0 = 0 é %.8g , com %d iteracoes.\n",r1,n1);
fprintf("A solucao para x0 = 0.8 é %.8g , com %d iteracoes.\n",r2,n2);

%Index começa 0, com o erro inicial sendo |x1-x0|, usando o resultado na função log10
xIndex1 = [0:n1-1];
xIndex2 = [0:n2-1];

figure(1);
plot(xIndex1,v1,xIndex2,v2);
xlabel("Index de Iteração");
ylabel("log10(εi), i=1,2");
grid on;
title( "Gráfico do par {x,[log10(ε1),log10(ε2)]}");
legend( "y=log10(ε1)","y=log10(ε2)","location", "northeastoutside");


%EOF

