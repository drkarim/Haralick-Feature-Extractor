% enter filenames of images
filename1 = input('Enter filename1: ');
filename2 = input('Enter filename2: ');
% load in the the image matrices 
% IMat - matrix of original image
% IMatM - matrix of the image mask
[IMat,IMatM] = ImageMatrix(filename1,filename2 );

% Obtain a comparison matrix 'IntMat' by looping through matrices IMat and IMatM
% IMat - matrix of original image
% IMatM - matrix of the image mask
% IntMat - comparison matrix where the values are either zero or the image
% intensities from IMat when IMatM is 1
IntMat = HistIntensities(IMat, IMatM);

% Produce histogram of comparison matrix IntMat
IntMatNew = reshape(IntMat,[],1);
IntMatNew(IntMatNew==0) = [];
num = input('Enter case number: ');
figure;
histogram(IntMatNew);
title(['Histogram of Intensities in the ',num2str(num),' Case'])
xlabel('Intensity');
ylabel('Frequancy');
