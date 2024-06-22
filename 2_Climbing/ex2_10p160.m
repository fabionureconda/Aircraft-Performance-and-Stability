vmax = 790/3.6;
W = 160000;
S = 50;
Cd0 = 0.02;
k = 0.04;
rho = 1.225;

Cl_vmax = 2*W/(rho*S*vmax^2);
Dmax = (1/2)*rho*S*vmax^2*(Cd0+k*(Cl_vmax^2));
T = Dmax

Em = 1/(2*sqrt(k*Cd0));
Em75 = Em*0.75;

v = 5:1:150;
Cl = 2*W./(rho*S*v.^2);
Cd = Cd0+k*Cl.^2;
E = Cl./Cd;

figure(1)
plot(E, Cl)
Cl75 = 0.32;
v75 = sqrt(2*W/(rho*S*Cl75));
Cd75 = Cd0+k*Cl75^2;
D75 = (1/2)*rho*S*v75^2*Cd75;

gamma = (T-D75)/W;
gamma = gamma*180/pi

Pa75 = T*v75;
Pr75 = D75*v75;
RC75 = (Pa75-Pr75)/W

Pa = T.*v;
Pr = (1/2)*rho*S*v.^2.*(Cd0+k*Cl.^2).*v;
RC = (Pa-Pr)./W;

figure(2)
plot(v, RC)

RCmax = max(RC)
v_RCmax = 132.2