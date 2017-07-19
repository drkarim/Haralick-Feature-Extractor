function [IMat,IMatM] = ImageMatrix(filename1,filename2 )

V1=spm_vol(filename1);
IMat=spm_read_vols(V1);
V2=spm_vol(filename2);
IMatM=spm_read_vols(V2);
% S = size(Y);
% IMat = Y1(:,:,:);
% IMatM = Y2(:,:,:);


end