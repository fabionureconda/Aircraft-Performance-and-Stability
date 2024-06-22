W = 50000;
S = 30;
P = 840e3;
np = 0.85;
Cd0 = 0.025;
k = 0.05;
Clmax = 1.75;
rho = 1.225;

Pa = np*P;
v = 5:1:150;
Cl = 2*W./(rho*S*V.^2);
D = 1/2*rho*v.^2*S*Cd0+2*k*W^2./(rho.*S.*v.^2);
Pr = D.*v;
Pa_v = ones(1, length(v)).*Pa;

figure
plot(v, Pr)
hold on 
plot(v, Pa_v)

vmin = 9.6;
vmax = 112.2
vstall = sqrt(2*W/(rho*S*Clmax));
if vmin < vstall
    vmin = vstall
end 