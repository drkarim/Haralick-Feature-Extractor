figure;

subplot(2,3,1);
histogram(IntMatNew);
title('Histogram of Intensities in Case 1');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);

subplot(2,3,2);
histogram(IntMatNew2);
title('Histogram of Intensities in Case 2');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);

subplot(2,3,3);
histogram(IntMatNew3);
title('Histogram of Intensities in Case 3');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);


subplot(2,3,4);
histogram(IntMatNew6);
title('Histogram of Intensities in Case 6');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);

subplot(2,3,5);
histogram(IntMatNew8);
title('Histogram of Intensities in Case 8');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);

subplot(2,3,6);
histogram(IntMatNew9);
title('Histogram of Intensities in Case 9');
xlabel('Intensity');
ylabel('Frequancy');
xlim([0 1000]);