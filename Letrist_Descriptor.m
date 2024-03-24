function [Letrist_Feature] = Letrist_Descriptor(I)
[rr cc zz] = size(I);
if zz == 1
    I = im2double(I);
else
    
    I = im2double(rgb2gray(I));
end

sigmaSet = [1 2 4]; 
F = makeGDfilters(sigmaSet);

K = 2;
C = 1;
Ls = 3;
Lr = 5; 
Letrist_Feature = getFeatsCodes(F, sigmaSet, I, Ls, Lr, K, C);
end