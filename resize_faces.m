% Resize the images. 
% 2022-1-11 10:32:09

clear,clc,close all;

% face databases
sData={'AR_I','AR_II','FEI','FERET','GT','IMM','LFW','ORL','PIE','UMIST','Yale','YaleB'}';
nData=length(sData);

% statistics
stat=zeros(nData,4);

% for each face database
mkdir('faces_resized');
for iData=1:nData
    cData=sData{iData,1};
    load(sprintf('faces/%s',cData)); % load data   
    [height,width,nImage]=size(x); % size 
    
    % set width to 32, and keep the height-to-width ratio
    height=round(32/width*height);
    width=32;
    
    % resize the images
    y=zeros(height,width,nImage);
    for iImage=1:nImage
        y(:,:,iImage)=imresize(x(:,:,iImage),[height,width]);
    end
    x=y; 
    
    % save the resized images
    save(sprintf('faces_resized/%s',cData),'x','label');
end