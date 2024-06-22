% Example 1.1 p 60 
% Data
S = 27.75;
a0 = 5.96; % rad-1
Cd0 = 0.006;
m = 2260.63;
A = 6;
h = 1500;
rho_rho0 = 0.864;
rho = rho_rho0*1.225;
v = 160/3.6;
e = 0.95;
g = 9.81;

% AoA?
W = m*g;
L = W;
Cl = L/(1/2*rho*S*(v^2));
a = a0/(1+(a0/(pi*A*e)));
alfa = Cl/a
k = 1/(pi*e*A);
Cdi = k*Cl^2;
Cd = Cd0 + Cdi
Cl_Cd = Cl/Cd
D = (1/2*rho*S*(v^2)*Cd)