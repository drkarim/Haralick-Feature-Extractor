function [featureVectorIm] = HaralickFeat2(cubes,IMat)
width = size(IMat,1);
height = size(IMat,2);
depth = size(IMat,3);
featureVectorIm = zeros(width*height*depth, 12*13);
n=1;
for x = 1:width
    for y = 1:height
        for z = 1:depth
            i = x + width*y + width*height*z;
             %tic; 
            [featureVector, coocMat] = cooc3d (cubes(:,:,:,i), 'distance', [1]);
            %toc;
             %featureVectorIm = [featureVectorIm; featureVector];
             
             featureVectorIm(i,:) = featureVector; 
            
        end
    end
end
end