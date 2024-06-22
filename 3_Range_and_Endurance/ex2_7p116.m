W = 80343;
S = 37.2;
c = 1.3/3600;
h = 10000;
Cd0 = 0.02;
k = 0.06;
sigma = 0.337;
rho = sigma*1.225;

% flying at constant velocity
R = 2400e3;
Cl_star = sqrt(Cd0/k);
Em = 1/(2*sqrt(k*Cd0));
vr = sqrt(2*W/(rho*S))*((k/Cd0)^(1/4));
Wfin = W/(exp(R*c/(vr*Em)));
Wfuel_v = W-Wfin

% flying at constant altitude
Cla = sqrt(Cd0/(3*k));
v = 3^(1/4)*vr;
Cda = Cd0+k*Cla^2;
b = (2/c)*(sqrt(Cla)/Cda)*sqrt(2/(rho*S));
Wfina = W+(R/b)^2-2*(R/b)*(W^(1/2))
Wfuel_a = W-Wfina

% endurance
tmax = 5*3600;
p = (1/c)*Em;
Wfine = W/(exp(tmax/p));
Wfuel_t = W-Wfine

% endurance no influence
vw = 10;
% constant velocity
Rnew_v = -Em/c*vw*log(W/Wfin)

%constant altitude
E = Cla/Cda;
Rnew_a = -E/c*vw*log(W/Wfina)