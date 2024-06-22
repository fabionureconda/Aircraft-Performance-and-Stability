a = 0.1;
T = 10000;
W = 50000;
A = 6;
e = 0.95;
Cd0 = 0.02;
S = 30;
rho = 1.225;

alfa = 1:0.01:20;
k = 1/(pi*e*A);
Cl = a*alfa;
Cd = Cd0 + k*Cl.^2;
v = sqrt(2*W./(rho*S*Cl));
D = (1/2)*rho*S*v.^2.*Cd;
Pa = T.*v;
Pr = D.*v;

gamma = (T-D)./W;
RC = (Pa-Pr)./W;

figure(1)
plot(alfa, gamma)

figure(2)
plot(alfa, RC)