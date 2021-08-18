% 2d Mesh with moving Addition object

clc
clear all
close all

%set lenghth X and Y
xlen = 100;
ylen = 100;


xvec = [1:1:xlen];
yvec = [1:1:ylen];

%create a 2D mesh

[X,Y] = meshgrid(xvec,yvec);

Z = zeros(size(X)); %zeroes(100,1000)

%we can use imagesc(Z) and colorbar for visualisation of object

%define the shape of object

xmin=30; xmax=60; %shows on y axis
ymin=40; ymax=50;
% Z(xmin:xmax,ymin:ymax) = 1;
%imagesc(Z)
 nsteps = 15;
 step_size = 15;
 %loop over
 x2min=40; x2max=50; %shows on y axis
y2min=30; y2max=60;
 
 for ii=1:nsteps
   Z(xmin:xmax,xmin+ii-step_size:xmax+ii-step_size)=0;
   Z(xmin:xmax,ymin+ii:ymax+ii) = 1;
   Z(x2min:x2max,x2min+ii-step_size:x2max+ii-step_size)=0;
   Z(x2min:x2max,y2min+ii:y2max+ii) = 1;
   figure();
   imagesc(Z);
     
 end
