%Função dos mínimos quadrados para 3 funções de base
function v = MinQ3(t,ft,phi0,phi1,phi2)
A = [dot(phi0(t),phi0(t)) dot(phi0(t),phi1(t)) dot(phi0(t),phi2(t));
     dot(phi1(t),phi0(t)) dot(phi1(t),phi1(t)) dot(phi1(t),phi2(t));
     dot(phi2(t),phi0(t)) dot(phi2(t),phi1(t)) dot(phi2(t),phi2(t))];
b = [dot(ft,phi0(t));
     dot(ft,phi1(t));
     dot(ft,phi2(t))];
v = A\b;
end