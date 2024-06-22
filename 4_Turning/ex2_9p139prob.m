W = 50000;
S = 30;
n_lim = 2.5;
Clmax = 1.75;
Cd0 = 0.025;
k = 0.05;
P = 840e3;
np = 0.85;
g = 9.81;
rho = 1.225;

for i = 5
    Pi = P;
    v = 5:1:150;
    n=1/(W/S)*(np.*Pi./W*rho*(W/S).*v/(2*k)-rho^2*Cd0.*v.^4/(4*k)).^0.5;
    
    R=v.^2./(g*(n.^2-1).^0.5); 
    mu=atan2(v.^2,(R*g));
    omega=g*(n.^2-1).^0.5./v; 
    t2pi=2*pi*v./(g*tan(mu));

    figure(1)
    subplot(3,2,1)
    hold on
    plot(v,n), grid on
    xlabel('V [m/s]')
    ylabel('n [-]')
    subplot(3,2,2)
    hold on
    plot(v,R), grid on
    xlabel('V [m/s]')
    ylabel('R [m]')
    subplot(3,2,3)
    hold on
    plot(v,omega*180/pi), grid on
    xlabel('V [m/s]')
    ylabel('omega [deg/s]')
    subplot(3,2,4)
    hold on
    plot(v,mu*180/pi), grid on
    xlabel('V [m/s]')
    ylabel('bank angle[deg]')
    subplot(3,2,5)
    hold on
    subplot(3,2,6)
    plot(v,t2pi), grid on
    xlabel('V [m/s]')
    ylabel('time for turn[s]')
end