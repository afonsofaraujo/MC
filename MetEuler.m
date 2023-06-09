%Método de Euler
function ly = MetEuler(f,x0,y0,T, n) 
h=(T-x0)/n;
%f=inline(expf,'x','y');
lt=x0:h:T;
ly=zeros(size(lt));
ly(1)=y0;
for j=1:n
  ly(j+1)=ly(j)+h*f(lt(j),ly(j));
end
return

end
