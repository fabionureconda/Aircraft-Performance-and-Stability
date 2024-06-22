W = 78480;
S = 30;
n_lim = 8;
Clmax = 1.2;
Cd0 = 0.012;
k = 0.12;
T = 39240;
rho = 1.225;
g = 9.81;

Em = 1/(2*(k*Cd0)^0.5);
z = T*Em/W;
v = 50:1:150;
vr = (2*W/rho*S)^0.5*(k/Cd0)^(1/4);
u = v./vr;

% MSTR
omega = g*((2*z-2)^0.5)/vr

% SST
R = vr^2/(g*(z^2-1)^2)

% nmax
n = z