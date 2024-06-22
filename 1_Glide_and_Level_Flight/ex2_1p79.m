W = 2000;
S = 8;
A = 16;
e = 0.95;
Cd0 = 0.015;
h = 300;
rho = 1.225;

k = 1/(pi*e*A);
Rmax = h/(2*sqrt(k*Cd0))
Cl_star = sqrt(Cd0/k);
vr = sqrt(2*W/(rho*S))*(k/Cd0)^(1/4)
Em = 1/(2*sqrt(k*Cd0));
gamma = -1/Em