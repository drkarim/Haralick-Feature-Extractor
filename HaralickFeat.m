function [featureVectorIm] = HaralickFeat(cubes,IMat)
n = size(cubes,4);
k = size(IMat,3);
featureVectorIm = zeros(n,624);
if rem(n,k) == 0
    for i = 1:(n/k)
       [featureVector, coocMat] = cooc3d (cubes(:,:,:,1+k*(i-1):i*k), 'distance', [1;2;4;8]);
       featureVectorIm = [featureVectorIm; featureVector];
   
end