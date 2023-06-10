%Função produto interno
function [c] = dot(a,b)
n=numel(a);
c=0;
for i=1:1:n
    c=c+a(i)*b(i);
end
end