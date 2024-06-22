W = 78480;
S = 25;
a = 0.06*(180/pi);
Clmax = 0.95;
Cd0 = 0.0254;
k = 0.178;
rho = 0.9074*1.225;
gamma = 3.5*(pi/180);
h_obs = 15;
mu = 0.02;

vstall = (2*W/(rho*S*Clmax))^0.5;
va = 1.3*vstall;
s1 = h_obs/tan(gamma);
t1 = s1/(va*cos(gamma));
R = va^2/(0.69*g);
s2 = (1/2)*R*gamma;

s_air = s1+s2;

Clmax_g = 0.45+Clmax;
Cd_g = (Cd0+k*Clmax_g^2)+0.05;
D = 1/2*rho*S*va^2*Cd_g;
L = 1/2*rho*S*va^2*Clmax_g;
T = 0;

F0 = T+(mu+0.04)*W;
F1 = T + D;

s3 = W/(2*g)*va^2/(F1-F0)*log(F1/F0)