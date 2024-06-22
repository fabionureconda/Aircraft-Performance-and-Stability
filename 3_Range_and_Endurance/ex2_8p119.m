W = 50000;
S = 30;
P = 840e3;
np = 0.85;
Cd0 = 0.025;
k = 0.05;
Clmax = 1.6;
c = 3/(3600*1000);
Wfin = 10000;
h = 3000;
sigma = 0.7423;
rho = sigma*1.225;
W1 = W-Wfin;

% RANGE
Em = 1/(2*sqrt(k*Cd0));
R = np/c*Em*log(W/W1)

v0 = sqrt(2*W/(rho*S))*(k/Cd0)^(1/4)
v1 = sqrt(2*W1/(rho*S))*(k/Cd0)^(1/4)

sigma_f = W1/W*sigma;
h = 44.3*(1-sigma_f^0.235)

% constant altitude
a = 1/4*(27/(k^3*Cd0))^(1/4);
tmax_a = (2*np)/c*a*sqrt(rho*S/2)*(1/sqrt(W1)-1/sqrt(W))

% constant velocity
vv = sqrt(2*W/(rho*S))*(k/Cd0)^(1/4);
Cl_star = sqrt(Cd0/k);
E = Cl_star/(Cd0+k*Cl_star^2);
tmaxv = np/c*E/vv*log(W/W1)

