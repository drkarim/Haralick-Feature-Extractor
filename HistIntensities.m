function IntMat = HistIntensities(IMat, IMatM)
% x - matrix of pixel intensities for main image
% y - matrix of pixel intensities for image mask
 IntMat = zeros(size(IMat,1), size(IMat,2), size(IMat,3));

 for i = 1:size(IMatM,1)
    for j = 1:size(IMatM,2)
     for k = 1:size(IMatM,3)
        if  (IMatM(i,j,k)== 1)
            IntMat(i,j,k) = IMat(i,j,k) ;
        else
            IntMat(i,j,k) =  0;
       
        end
     end
    end
 end
end