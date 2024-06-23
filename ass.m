% Data
rho = 1.225;
m_ft= 0.10;
m_w= 0.10;
xcg_w=0.09;
xcg_ft=0.4;
xac_t=0.93;
bw=0.98;
cw=0.20;
bt=0.5;
ct=0.15;
ew=0.9;
et=0.85;
a0 = [6, 5.5, 6.5, 6.4];
a0 = a0(:);
Cl0 = [0, 0.5, -0.1, 0.2];
Clmax =[1.1, 1.4, 1.15, 1.2];
Cd0 = [0.015, 0.015, 0.015, 0.014];
k = [0.06, 0.05, 0.05, 0.04];
Cm0 = [0, -0.12, 0, -0.05];
dCmdCl = 0;
etat = 0.95;
h = 4;
Sw = bw*cw;
St = bt*ct;
Aw = bw/cw;
At = bt/ct;
W = (m_w+m_ft)*9.81;

xle = 0.01:0.01:1;
for i = 1:4
    aw = a0(i)/(1+a0(i)/(pi*Aw*ew));
    at = a0(i)/(1+a0(1)/(pi*At*et));
    depsilondalpha = 2*aw/(pi*Aw);
    Hn = -(xle+xcg_w+xcg_ft)./(2*cw)+(xle+0.25*cw)./cw+(at/aw)*(1-depsilondalpha)*etat*St*(xac_t-(xle+xcg_w+xcg_ft)./2)/(Sw*cw);
    figure(i)
    plot(xle, Hn)
    hold on
    yline(0.12, 'r')          %We find in the plot the corresponding value of xle for Hn of 0.12
    grid on
    xlabel("Xle")
    ylabel("Hn")
    hold off
end

xle = [0.284, 0.276, 0.291, 0.290];
xac = zeros(4,1);
xcg = zeros(4,1);
V1 = zeros(4,1);
for t = 1:4
    xaci = (xle(t) + 0.25*cw)/cw;
    xcgi = ((xle(t)+xcg_w)*m_w + xcg_ft*m_ft)/(m_w*m_ft*cw);
    xac(i) = xaci;
    xcg(i) = xcgi;
    V1i = St*(xac_t-xcgi*cw)/(Sw*cw);
    V1(i) = V1i; 
end

% Maximum Range
Rmax = zeros(4,1);
vr = zeros(4,1);
for p = 1:4
    Rmaxi = h/(2*(k(p)*Cd0(p)));
    vri = (2*W/(rho*Sw)^0.5)*(k(p)/Cd0(p))^(1/4);
    Rmax(i) = Rmaxi;
    vr(i) = vri;
end
Lt = 0;
change= 1;
tol =1e-2;
Clw = zeros(4,1);
Clt = zeros(4,1);
for r = 1:4
while change > tol
    Clwr = 2*(W-Lt)/(rho*vr(r)^2*Sw);
    Cmac_w = (W-Lt)/(0.5*rho*vr(r)^2*Sw*bw);
    Cltr = (Clwr*(xcg(r)-xac(r))+Cmac_w)/(etat*V1(r));
    Ltnew = 0.5*rho+vr(r)^2*St*etat*Cltr;
    change = abs(Ltnew-Lt);
    Lt = Ltnew;
end
Clw(r) = Clwr;
Clt(r) = Cltr;
end




