close all; clear all;
%load('AR_1260_occu')
load('dataset.mat')
R=15; % How many people to extract as top residual 
r=1:300; %Specify the occlusion face number
accn=zeros(1,4); accnL1=zeros(1,4); accnL2=zeros(1,4); accnL3=zeros(1,4); %Size : n*i
u=7.3; v=0.51;% u: scale, v:shift
for n=1:1 % Controlling R index

%trainDict= AR_1260_neutral; %trainDict= AR_1260_neutral12; 
train_faces=igo(test,u,v);
imshow(train_faces(1))
end