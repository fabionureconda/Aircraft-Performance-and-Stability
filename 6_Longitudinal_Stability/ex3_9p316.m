xac = 0.2;
xcog = 0.25;
Cmf = 0.1;
aw = 0.1*180/pi;
at = 0.08*180/pi;
eps = 0.45;
lt_c = 2.5;
nt = 0.95;
S = 25;

Hn = 0.08;
N0 = Hn+xcog;
V1 = (N0-xac+Cmf)/(at/aw*(1-eps)*nt);
St = V1*S/lt_c