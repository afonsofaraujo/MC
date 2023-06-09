%Método de Newton
function [rbar,k] = MetNewton(f,d1f,a,x0,nmax,epsilon)
nmax = nmax+1;
x=[x0];
k=1;
while k<nmax
    x(k+1)=x(k)-f(x(k),a)./d1f(x(k));
    if abs(x(k+1)-x(k))<epsilon
        break
    end
    k=k+1;
end
rbar=x;
end