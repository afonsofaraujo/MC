
function ly = MetRKEulerModificado(f,x0,y0,T, n) 
h=(T-x0)/n;
%f=inline(expf,'t','y');
lt=x0:h:T;
ly=zeros(size(lt));
ly(1)=y0;
for j=1:n
      fj=f(lt(j),ly(j));
  ly(j+1)=ly(j)+h*f(lt(j)+h/2,ly(j)+h/2*fj);
end 
return

