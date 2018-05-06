clear all;
close all;

Xi0 = 1;
lambda = 640*1e-9;
S1 = SphericalEmitter(0,Xi0,0,lambda);
S2 = SphericalEmitter(0.005,Xi0,0,lambda);

screenDist = 0.1;
xmin = -0.5;
xmax = 0.5;
nPoints = 500;

PTot = zeros(nPoints,1);
PTemp = S1.PowerAtDist(xmin,xmax,nPoints,screenDist);

PTot = PTot + PTemp;
%PTemp = S2.PowerAtDist(xmin,xmax,nPoints,screenDist);
%PTot = PTot + PTemp;
figure
plot(linspace(xmin,xmax,nPoints),PTot,'r');
% figure
% imagesc(PTot);


