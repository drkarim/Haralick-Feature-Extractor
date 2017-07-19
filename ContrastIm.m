im =[];
 
% im = image matrix showing diseased myocardium
for i = 1:length(Contrast_direction_1)
    if Contrast_direction_1(i) > ConThresh
        im(i) = 0;
    else
        im(i) = 1;
    end
end

I =[];
for n = 1:length(NewMapIm)
    a = abs(round(NewMapIm(n,1)));
    b = abs(round(NewMapIm(n,2)));
    c = abs(round(NewMapIm(n,3)));
%     I(a,b,c) = im(n);
I(a,b,c) = IMatMain(a,b,c);
end
