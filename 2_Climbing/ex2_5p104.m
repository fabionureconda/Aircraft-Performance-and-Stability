W = 50000;
S = 30;
P = 840e3;
np = 0.85;
Cd0 = 0.025;
k = 0.05;
Clmax = 1.75;
rho = 1.225;
Em = 1/(2*sqrt(k*Cd0));

v = 5:1:150;
T = np*(P./v);
Cl = 2*W./(rho*S*v.^2);
Cd = Cd0+k*Cl.^2;
D = (1/2)*rho*S*v.^2.*Cd;
gamma = (T-D)/W;

figure
plot(v, gamma*180/pi)
gamma_max_deg=max(gamma*180/pi)
vg_init = 19
vstall = sqrt(2*W/(rho*S*Clmax));
if vg_init < vstall 
    vg_fin = vstall
else 
    vg_fin = v_init
end
gamma_new = 15;

vr = sqrt(2*W/(rho*S))*((k/Cd0)^(1/4));
vmp = ((1/3)^(1/4))*vr;
rcmax = np*(P/W)-vmp/(0.866*Em)