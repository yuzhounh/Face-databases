% Display the face databases. 
% 2022-1-11 10:46:08

clear,clc,close all;

% face databases
sData={'AR_I','AR_II','FEI','FERET','GT','IMM','LFW','ORL','PIE','UMIST','Yale'}';
nData=length(sData);

% number of subjects in each face database
sSub=[120,99,200,200,50,40,158,40,68,20,15]';

% for each face database
for iData=1:nData
    cData=sData{iData,1}; 
    load(sprintf('faces/%s',cData)); % load data
    [height,width,nImage]=size(x); % size 
    nSub=sSub(iData); % number of subjects 
    nIS=nImage/nSub; % number of images per subject
    
    % reshape the images
    x=reshape(x,[height,width,nIS,nSub]);
    
    % the first images of all subjects
    figure;
    y=x(:,:,1,:);
    montage(y,'DisplayRange',[]);
    title(sprintf('%s, all subjects',cData),'interpreter','none');
    
    % all images of the first subject
    figure;
    z=x(:,:,:,1);
    montage(z,'DisplayRange',[]);
    title(sprintf('%s, the first subject',cData),'interpreter','none');
end
