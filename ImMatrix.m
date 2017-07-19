function [IMat] = ImMatrix(filename1)

V1=spm_vol(filename1);
IMat=spm_read_vols(V1);

% S = size(Y);
% IMat = Y1(:,:,:);
% IMatM = Y2(:,:,:);


end