W = 45000;
S = W/1450;
Cd0 = 0.014;
k = 0.038;
Clmax = 1.5;
rho = 1.225;
s = rho/1.225;
h = 9000;
T = 20000*s;

vr = sqrt(2*W/(rho*S))*((k/Cd0)^(1/4));
Em = 1/(2*sqrt(k*Cd0));
z = T*Em/W;
umax = sqrt(z+sqrt(z^2-1));
umin = sqrt(z-sqrt(z^2-1));
vmin = umin*vr;
vmax = umax*vr
vstall = sqrt(2*W/(rho*S*Clmax));
if vmin < vstall
    vmin = vstall
end

% the absolute ceiling happens when z = T*Em/W = 1
Tc = 1*W/Em;
sc = Tc/20000;
rhoc = sc*rho

h = 17000;