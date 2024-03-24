clc
clear all;
close all;
Test_Letrist_Feature=[];
Test_Letrist_Label=[];
Dataset='Test';
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
        
        Test_Letrist_Feature=[Test_Letrist_Feature;F];
        if(files(i,:)=='1 ')
            Test_Letrist_Label=[Test_Letrist_Label;1];
        else
            Test_Letrist_Label=[Test_Letrist_Label;0];
        end
        %pause(1)
    end
end
save('Test_Letrist_Feature','Test_Letrist_Feature')
save('Test_Letrist_Label','Test_Letrist_Label')
