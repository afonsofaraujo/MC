%Calculo do integral pela regra de Simpson Composta
function [res, h] = SimpComp(f,a,b,n)
if mod(n,2)~=0 %requer número de intervalos pares
    n=n+1;
end
h=abs(a-b)/n;
int=linspace(a,b,n+1);
res=(h/3)*(f(int(1))+f(int(end)));
for i=2:1:n     %só os pontos interiores
    if mod(i,2)==0    %a contagem no matlab começa no 1 por isso está trocado
        res=res+(4*h/3)*f(int(i));    %termos ímpares
    else
        res=res+(2*h/3)*f(int(i));    %termos pares
    end
end
end
