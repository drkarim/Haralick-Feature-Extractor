 IntMatNew = reshape(IntMat,[],1);
 IntMatNew(IntMatNew==0) = [];

figure;
histogram(IntMatNew);
title('Histogram of Intensities in Mask 1');
xlabel('Intensity');
ylabel('Frequancy');

 IntMatNew2 = reshape(IntMat2,[],1);
 IntMatNew2(IntMatNew2==0) = [];

figure;
histogram(IntMatNew2);
title('Histogram of Intensities in Mask 2');
xlabel('Intensity');
ylabel('Frequancy');

IntMatNew3 = reshape(IntMat3,[],1);
IntMatNew3(IntMatNew3==0) = [];
 
figure;
histogram(IntMatNew3);
title('Histogram of Intensities in Mask 3');
xlabel('Intensity');
ylabel('Frequancy');

IntMatNew6 = reshape(IntMat6,[],1);
 IntMatNew6(IntMatNew6==0) = [];

figure;
histogram(IntMatNew6);
title('Histogram of Intensities in Mask 6');
xlabel('Intensity');
ylabel('Frequancy');

IntMatNew8 = reshape(IntMat8,[],1);
IntMatNew8(IntMatNew8==0) = [];

figure;
histogram(IntMatNew8);
title('Histogram of Intensities in Mask 8');
xlabel('Intensity');
ylabel('Frequancy');

IntMatNew9 = reshape(IntMat9,[],1);
 IntMatNew9(IntMatNew9==0) = [];

figure;
histogram(IntMatNew9);
title('Histogram of Intensities in Mask 9');
xlabel('Intensity');
ylabel('Frequancy');


