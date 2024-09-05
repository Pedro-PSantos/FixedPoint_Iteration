function [r,dx,n,vetorLogErro]= algoritmopontofixo(f,x0,dxd,kmax,L)
% Método do ponto fixo para raiz de f(x)=0
%
%
% [r,dx,n]= pontofixo(f,x0,dxd,kmax)
%
% f - referência para função f(x)
% x0 - estimativa inicial
% dxd - dx máximo desejado, dx=|x(k)-x(k-1)|
% kmax - limite de iterações
% L - max |f'(x)|
%
% r - estimativa da raiz r=xn
% dx - erro absoluto |x(n)-x(n-1)|
% n - índice da estimativa na sequência gerada x0,x1,...,xn
% vetorErro - vetor com os erros, por iteração
%
% Método ajustado para criar um vetor com os valores de log10
% do erro absoluto, em cada iteração
%
% file algoritmopontofixo.m

k=0;
x1 = f(x0);
vetorLogErro = [log10(abs(x1-x0))];
while(abs(x1-x0) > dxd && k < kmax)

   x0=x1;
   x1=f(x0);
   k=k+1;
   vetorLogErro = [vetorLogErro,log10(abs(x1-x0))];

end

r = x1;
dx = abs(x1-x0);
n = k+1;

if dx > dxd
   fprintf('!!! A precisão desejada não foi atingida! !!!\n')
end


%EOF
