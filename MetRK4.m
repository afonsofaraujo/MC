%Método Runge-Kutta de ordem 4
function ly = MetRK4(f,x0,y0,T, n) 
h=(T-x0)/n;
%f=inline(expf,'x','y');
lt=x0:h:T;
ly=zeros(size(lt));
ly(1)=y0;
for j=1:n
  fj=f(lt(j),ly(j));
  Y1=h*fj;
  Y2=h*f(lt(j)+h/2,ly(j)+Y1/2);
  Y3=h*f(lt(j)+h/2,ly(j)+Y2/2);
  Y4=h*f(lt(j)+h,ly(j)+Y3);
  ly(j+1)=ly(j)+(Y1+2*Y2+2*Y3+Y4)/6;
 end 
 return
end
