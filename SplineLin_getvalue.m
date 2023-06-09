%Função que encontra uma aproximação para um dado a recorrendo ao spline linear
function [b] = SplineLin_getvalue(t,ft,a)
n=numel(t);      
min=t(1);     %encontrar entre que pontos está o 'a' pedido
for i=1:1:n
    if t(i)>a
        min=t(i-1);
        max=t(i);
        break
    end
end
b=ft(min)+(ft(max)-ft(min)).*(a-min)./(max-min);
end