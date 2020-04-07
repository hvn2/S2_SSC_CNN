function Z=ATPRKwrap(Yim)
%%%%This is the code for ATPRK produced by Dr Qunming Wang; Email: wqm11111@126.com
%%%%Copyright belong to Qunming Wang
%%%%When using the code, please cite the fowllowing papers
%%%%Q. Wang, W. Shi, Z. Li, P. M. Atkinson. Fusion of Sentinel-2 images. Remote Sensing of Environment, 2016, 187: 241�C252.
%%%%Q. Wang, W. Shi, P. M. Atkinson, Y. Zhao. Downscaling MODIS images with area-to-point regression kriging. Remote Sensing of Environment, 2015, 166: 191�C204.

%%%%%The synthesized schem in ATPRK amounts to the use of all 10m bands
%clear all;
% load S2_20m;%%%20m bands in a image cube (6 bands)
% load S2_10m;%%%10m bands in a image cube (4 bands)
s=2;

d = [6 1 1 1 2 2 2 1 2 6 2 2]';
ind = find(d==2);
for i=1:numel(ind)
    I_MS(:,:,i)=Yim{ind(i)};
end
ind = find(d==1);
for i=1:numel(ind)
    I_PAN(:,:,i)=Yim{ind(i)};
end

w=1;
sigma=s/2;
PSFh=PSF_template(s,w,sigma);%%%Gaussian PSF
%PSFh=zeros((2*w+1)*s,(2*w+1)*s);PSFh(w*s+1:w*s+s,w*s+1:w*s+s)=1/s^2;%%%Ideal square wave PSF

Sill_min=1;
Range_min=0.5;
L_sill=20;
L_range=20;
rate=0.1;
H=20;
tic
for i=1:6
    [xrc1,RB0,Z0]=ATPRK_MSsharpen(I_MS(:,:,i),I_PAN,Sill_min,Range_min,L_sill,L_range,rate,H,w,PSFh);
    Z(:,:,i)=Z0;
end
alltime=toc
end

