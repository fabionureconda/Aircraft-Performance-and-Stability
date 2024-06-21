W = 4500;
L_S = 600;
S = W / L_S;
Cd0 = 0.01;
k = 0.022;
h = 400;
rho = 1.20165;

Rmax = h / (2*sqrt(k*Cd0))
vr = sqrt(2*W/(S*rho))*((k/Cd0)^(1/4))
t = Rmax/vr

tmax = sqrt(rho/(L_S*2))*(27/(k^3*Cd0))^(1/4)*h/4;
vm = (1/3)^(1/4)*vr;
R = vm*tmax
% no changes for the endurance (time staying in the air)
% since it is related to the vertical velocity (rate of sink)
% but changes in the range!!!! the range is increased

Rextra = (10)*t