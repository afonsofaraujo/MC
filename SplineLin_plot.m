
%Função que desenha o Spline Linear
function [] = SplineLin_plot(t,ft)
scatter(t,ft)
hold on
x=linspace(t(1),t(end));
n=numel(t);
for i=1:1:n-1
    s=@(x) ft(i)+(ft(i+1)-ft(i)).*(x-t(i))./(t(i+1)-t(i));
    fplot(s,[t(i),t(i+1)])
end
hold off
end
