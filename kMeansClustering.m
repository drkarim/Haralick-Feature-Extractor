function [xvals, yvals, zvals] = kMeansClustering(filename,BPM,HM,HSd,F)
% Outputs:
% xvals - x values
% yvals - y values
% zvals - z values
% Inputs:
% filename - name of image file
% BPM - bloodpool mean
% HM - healthy myocardium mean
% HSd - healthy myocardium standard deviation
% F - mean of scar tissue divided by 2
 
xvals = [];
yvals = [];
zvals = [];
n=1;

IMat = ImMatrix(filename);

for i = 1:size(IMat,1)
    
    for j = 1:size(IMat,2)
     for k = 1:size(IMat,3)
% p = IMat(i,j,k);
            p= (rand(1))*100;
         if p>0 
         xvals(n) = p/BPM;
         yvals(n) = abs(p- HM)/HSd;
         zvals(n) = abs(p - F)/F;
         n = n + 1;
         end
     end
    end 

end

end