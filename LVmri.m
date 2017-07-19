V=spm_vol('p1_de_myo.nii');
Y=spm_read_vols(V);
S = size(Y);

figure;
imagesc(Y(:,:,10)); % display the axial slice where z=10