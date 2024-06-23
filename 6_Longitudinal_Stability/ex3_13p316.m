S = 30;
W = 2000*S;
Cmac_w = -0.05;
Cmac_t = 0;
nt = 0.9;
St_S = 0.3;
lt_c = 2.5;
Cd0 = 0.025;
k = 0.05;

x_a = -0.15;
Cmf_0 = 0.05;
dCmfdCl = 0.08;

v = 250;
rho = 1.225;
V1 = St_S*lt_c;
Cl = 2*W/(rho*S*v^2);
tol = 0.01;
Lt0 = 0;
change = 1;
while change > tol
Cl_w = 2*(W-Lt0)/(rho*S*v^2);
Clt = (Cl_w*x_a+Cmac_w+Cmf_0+dCmfdCl*Cl)/(nt*V1);
Lt_new = (1/2)*rho*St_S*S*nt*(v^2)*Clt;
change = abs(Lt_new-Lt0);
Lt0 = Lt_new;
end
Lt0
Clt

dCd = k*(Cl_w^2-Cl^2)
D = (1/2)*rho*S*(v^2)*dCd;