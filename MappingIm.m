width = size(IMat,1);
width = uint32(width);
height = size(IMat,2);
height = uint32(height);
x1 = [];
y1 = [];
z1 = [];

for i = 1:size(featureVectorIm,1)
    i = uint32(i) + 4224;
    
a = idivide(i,uint32(width));  
x1(i) = rem(i,width);
y1(i) = rem(a,height);
z1(i) = idivide (i, (width*height));

end
% x = [];
% y = [];
% z = [];
% 
% for l = 1:length(x1)
%     x(l) = x1(l) + 1;
% end
% 
% for m = 1:length(y1)
%     y(m) = y1(m) + 1;
% end
% 
% for n = 1:length(z1)
%     if z1(n) > 1
%         z(n) = z1(n) - 1;
%     end
%     if z1(n) == 0
%         z(n) = 1;
%     end
%     if z1(n) == 1
%         z(n) = 1;
%     end
% end
MapIm = [x1;y1;z1];
MapIm = MapIm';
        
        