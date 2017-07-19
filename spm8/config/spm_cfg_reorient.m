function reorient = spm_cfg_reorient
% SPM Configuration file
% automatically generated by the MATLABBATCH utility function GENCODE
%_______________________________________________________________________
% Copyright (C) 2008 Wellcome Trust Centre for Neuroimaging

% $Id: spm_cfg_reorient.m 4380 2011-07-05 11:27:12Z volkmar $

rev = '$Rev: 4380 $';
% ---------------------------------------------------------------------
% srcfiles Images to reorient
% ---------------------------------------------------------------------
srcfiles         = cfg_files;
srcfiles.tag     = 'srcfiles';
srcfiles.name    = 'Images to reorient';
srcfiles.help    = {'Select images to reorient.'};
srcfiles.filter = 'image';
srcfiles.ufilter = '.*';
srcfiles.num     = [0 Inf];
% ---------------------------------------------------------------------
% transM Reorientation Matrix
% ---------------------------------------------------------------------
transM         = cfg_entry;
transM.tag     = 'transM';
transM.name    = 'Reorientation Matrix';
transM.help    = {
                  'Enter a valid 4x4 matrix for reorientation.'
                  ''
                  'Example: This will L-R flip the images.'
                  ''
                  '   -1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1'
}';
transM.strtype = 'e';
transM.num     = [4 4];
% ---------------------------------------------------------------------
% transprm Reorientation Parameters
% ---------------------------------------------------------------------
transprm         = cfg_entry;
transprm.tag     = 'transprm';
transprm.name    = 'Reorientation Parameters';
transprm.help    = {
                    'Enter 12 reorientation parameters.'
                    'P(1)  - x translation'
                    'P(2)  - y translation'
                    'P(3)  - z translation'
                    'P(4)  - x rotation about - {pitch} (radians)'
                    'P(5)  - y rotation about - {roll}  (radians)'
                    'P(6)  - z rotation about - {yaw}   (radians)'
                    'P(7)  - x scaling'
                    'P(8)  - y scaling'
                    'P(9)  - z scaling'
                    'P(10) - x affine'
                    'P(11) - y affine'
                    'P(12) - z affine'
                    'Parameters are entered as listed above and then processed by spm_matrix.'
                    ''
                    'Example: This will L-R flip the images (extra spaces are inserted between each group for illustration purposes).'
                    ''
                    '   0 0 0   0 0 0   -1 1 1   0 0 0'
                    ''
}';
transprm.strtype = 'e';
transprm.num     = [1 12];
% ---------------------------------------------------------------------
% transform Reorient by
% ---------------------------------------------------------------------
transform         = cfg_choice;
transform.tag     = 'transform';
transform.name    = 'Reorient by';
transform.val     = {transM };
transform.help    = {'Specify reorientation parameters - either 12 parameters or a 4x4 transformation matrix. The resulting transformation will be left-multiplied to the voxel-to-world transformation of each image and the new transformation will be written to the image header.'};
transform.values  = {transM transprm };
% ---------------------------------------------------------------------
% prefix Filename Prefix
% ---------------------------------------------------------------------
prefix         = cfg_entry;
prefix.tag     = 'prefix';
prefix.name    = 'Filename Prefix';
prefix.help    = {['Specify the string to be prepended to the filenames ' ...
                   'of the reoriented image file(s). If this is left ' ...
                   'empty, the original files will be overwritten.']};
prefix.strtype = 's';
prefix.num     = [0 Inf];
% This should not be hardcoded here
prefix.val     = {''};
% Final solution: defaults setting
% prefix.def     = @(val)spm_get_defaults('reorient.prefix', val{:});
% The following 3 lines should go into spm_defaults.m
% % Reorient defaults
% %=======================================================================
% defaults.reorient.prefix = ''; % Output filename prefix ('' == overwrite)

% ---------------------------------------------------------------------
% reorient Reorient Images
% ---------------------------------------------------------------------
reorient         = cfg_exbranch;
reorient.tag     = 'reorient';
reorient.name    = 'Reorient Images';
reorient.val     = {srcfiles transform prefix};
reorient.help    = {'This facility allows to reorient images in a batch. The reorientation parameters can be given either as a 4x4 matrix or as parameters as defined for spm_matrix.m. The new image orientation will be computed by PRE-multiplying the original orientation matrix with the supplied matrix.'};
reorient.prog = @spm_run_reorient;
reorient.vout = @vout;
% ---------------------------------------------------------------------

% ---------------------------------------------------------------------
function dep = vout(job)
dep            = cfg_dep;
dep.sname      = 'Reoriented Images';
dep.src_output = substruct('.','files');
dep.tgt_spec   = cfg_findspec({{'filter','image','strtype','e'}});
