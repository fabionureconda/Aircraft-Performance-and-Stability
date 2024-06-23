xcog = 0.3;
xac = 0.24;
Clmax = 1.2;
Cmac_w = 0.06;
eps = 0.3;
Cmf0 = 0.05;
dCmfdCL = 0.1;
at = 0.08*180/pi;
nt = 0.9;
V1 = 0.6;
iw = 0;
it = 2*pi/180;
Ch_alfa = -0.002*180/pi;
Ch_de = -0.003*180/pi;
tau = 0.2;
alpha_0Lw = 2.5*pi/180;
aw = 0.1;

alpha=[-5:0.01:10]*pi/180;
alpha_eff = alpha+iw-alpha_0Lw;
Cl_t = at*(alpha +it-eps*alpha_eff);
Clw = aw*alpha_eff;
Cl = Clw;
Cmf = 0.05+0.1*Cl;
Cmac_t = 0;
Cm = Cmf+Cmac_w+Clw*(xcog-xac)+Cmac_t-Cl_t*V1*nt;

figure
plot(alpha*180/pi, Cm)
grid on