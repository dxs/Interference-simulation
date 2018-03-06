clear
clc
thetamax=pi/50;
while(1)
    a=10;
    a=a*1e-6;%slit width
    d=0.1;
    d=d*1e-3;%slit separation
    l=500;
    l=l*1e-9;%lambda
    s=0.5;%screen distance
    theta=-thetamax:1e-5:thetamax;
    y=s*tan(theta);
    alpha=pi*a*sin(theta)/l;
    beta=pi*d*sin(theta)/l;
    x1=cos(beta).^2;            % Interference term
    x2=(sin(alpha)./alpha).^2;  % Diffraction term
    x=x1.*x2;                   % Combined effect
    plot(y,x,'b',y,x2,'--r');
    title('Double slit diffraction  Mahesha MG 2012');
    xlabel('Distance in m');
    ylabel('Intensity');
    hold all;
end