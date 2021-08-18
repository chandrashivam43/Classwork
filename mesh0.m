clc
clear all
close all

%set lenghth X and Y
xlen = 100;
ylen = 100;

%create vector
xvec = [1:1:xlen];
yvec = [1:1:ylen];

%create a 2D mesh

[X,Y] = meshgrid(xvec,yvec);

Z = zeros(size(X)); %zeroes(100,1000)

%we can use imagesc(Z) and colorbar for visualisation of object

%define the shape of object

xmin=30; xmax=80; %shows on y axis
ymin=40; ymax=50;
% Z(xmin:xmax,ymin:ymax) = 1;
%imagesc(Z)
 nsteps = 10;
 step_size = 10;
 %loop over
 for ii=1:nsteps
  % Z(xmin:xmax,ymin+ii-step_size:ymax+ii-step_size)=0;
   % Z(xmin:xmax,sqrt(xmin./3.14+ii):sqrt(xmax./3.14+ii)) = 1;
   
  Z(xmin:xmax,ymin+ii-step_size:ymax+ii-step_size)=1;

   figure();
    
    imagesc(Z);
     
 end

