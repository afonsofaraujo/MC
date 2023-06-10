%Calculo do integral pela regra dos Trapézios Composta
function [res,h] = TrapComp(f,a,b,n)
int=linspace(a,b,n+1);
h=abs(a-b)/n;
res=0;
for i=1:1:n
    res=res+(f(int(i))+f(int(i+1)))*h/2;
end
end