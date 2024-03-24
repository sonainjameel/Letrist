clc
clear all;
close all;
Train_Letrist_Feature=[];
Train_Letrist_Label=[];
Dataset='Train';
files=ls(Dataset)
files(1,:)=[]
files(1,:)=[]
%length(files)
for i=1:size(files,1)
    files2=strcat(Dataset,'\',files(i,:))
    files3=ls(files2)
    files3(1,:)=[]
    files3(1,:)=[]
    for j=1:size(files3,1)
        files4=strcat(files2,'\',files3(j,:))
        %files5=ls(files4)
        a=imread(files4);
        I=imresize(a,[200,200]);
        %imshow(I)
        % load image
        
        
        G = rgb2gray(I);
% run descriptor
        [F] = Letrist_Descriptor(I);



        %pause(1)
        
        Train_Letrist_Feature=[Train_Letrist_Feature;F];
        if(files(i,:)=='1 ')
            Train_Letrist_Label=[Train_Letrist_Label;1];
        else
            Train_Letrist_Label=[Train_Letrist_Label;0];
        end
        %pause(1)
    end
end
save('Train_Letrist_Feature','Train_Letrist_Feature')
save('Train_Letrist_Label','Train_Letrist_Label')
