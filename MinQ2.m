%Função dos mínimos quadrados para 2 funções de base
function v = MinQ2(t,ft,phi0,phi1)
A = [dot(phi0(t),phi0(t)) dot(phi0(t),phi1(t));
     dot(phi1(t),phi0(t)) dot(phi1(t),phi1(t))];
b = [dot(ft,phi0(t));
     dot(ft,phi1(t))];
v = A\b;
end