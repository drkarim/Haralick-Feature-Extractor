function [cubes, NewMapIm] = CreateCubes(IMatMain)
xvals = -1*(ones(1,62370));
yvals = -1*(ones(1,62370));
zvals = -1*(ones(1,62370));
%Input:
% IMat - Image Matrix
% Output:
% Cubes: Array of image cubes for each pixel
cubes = zeros(3,3,3,((size(IMatMain,1))*(size(IMatMain,2))*(size(IMatMain,3))));
cube=zeros(3,3,3);
width = size(IMatMain,1); 
height = size(IMatMain, 2);
for i = 1:size(IMatMain,1)
    for j = 1:size(IMatMain,2)
        for k = 1:size(IMatMain,3)
            if IMatMain(i,j,k) > 0
                for x = -1:1
                    for y = -1:1
                        for z = -1:1
                            a = (i + x);
                            b = (j + y);
                            c = (k + z);
                            
                            d = abs(round(x+2));
                            e = abs(round(y+2));
                            f = abs(round(z+2));
                            
                            if (a<=0 || a>size(IMatMain,1)) || (b<=0 || b>size(IMatMain,2)) || (c<=0 || c>size(IMatMain,3))
                                cube(d,e,f)=0;
                            elseif((d>0 && d<=3) && (e>0 && e<=3) && (f>0 && f<=3))
                                
                                cube(d,e,f)=IMatMain(a,b,c);
                                
                            end
                        end
                    end
                end
            end
            
            n = i + width*j + width*height*k;
            n = n - 4224;
            cubes(:,:,:,n) = cube;
            xvals(n) = i;
            yvals(n) = j;
            zvals(n) = k;
            %n=n+1;
        end
    end
end

% x_vals = [];
% y_vals = [];
% z_vals = [];
% 
% for p = 1:length(xvals)
%     if xvals(p) == 0
%          x_vals(p) = 1;
%     else x_vals(p) = xvals(p);
%     end
% end
% 
% for q = 1:length(yvals)
%     if yvals(q) == 0
%         y_vals(q) = 1;
%     else y_vals(q) = yvals(q);
%     end
% end
% 
% for r = 1:length(zvals)
%     if zvals(r) == 0
%         z_vals(r) = 1;
%     else z_vals(r) = zvals(r);
%     end

NewMapIm = [xvals;yvals;zvals];
NewMapIm = NewMapIm';
end




