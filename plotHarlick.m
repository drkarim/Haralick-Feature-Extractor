figure;
plot(Energy_direction_1, Contrast_direction_1,'.');
title('Plot of Energy against Contrast for Direction 1');
xlabel('Energy');
ylabel('Contrast');

figure;
plot3(Energy_direction_1, Contrast_direction_1, Correlation_direction_1,'.');
title('Plot of Energy Vs Contrast Vs Correlation for Direction 1');
xlabel('Energy');
ylabel('Contrast');
zlabel('Correlation');

figure;
plot(Entropy_direction_1, Contrast_direction_1,'.');
title('Plot of Entropy against Contrast for Direction 1');
xlabel('Entropy');
ylabel('Contrast');

figure;
plot3(Entropy_direction_1, Contrast_direction_1, Energy_direction_1,'.');
title('Plot of Entropy Vs Contrast Vs Energy for Direction 1');
xlabel('Entropy');
ylabel('Contrast');
zlabel('Energy');

figure;
plot(Contrast_direction_1, Variance_direction_1,'.');
title('Plot of Contrast against Variance for Direction 1');
xlabel('Contrast');
ylabel('Variance');

figure;
plot(SumMean_direction_1, Inertia_direction_1,'.');
title('Plot of SumMean against Inertia for Direction 1');
xlabel('SumMean');
ylabel('Inertia');

figure;
plot(ClusterShade_direction_1, ClusterTend_direction_1,'.');
title('Plot of Cluster Shade against Cluster Tendency for Direction 1');
xlabel('Cluster Shade');
ylabel('Cluster Tendency');

figure;
plot(Homogeneity_direction_1, InvVar_direction_1,'.');
title('Plot of Homogeneity against Inverse Varience for Direction 1');
xlabel('Homogeneity');
ylabel('Inverse Varience');

figure;
plot(SumMean_direction_2, Inertia_direction_2,'.');
title('Plot of SumMean against Inertia for Direction 2');
xlabel('SumMean');
ylabel('Inerta');

figure;
plot(SumMean_direction_2, Contrast_direction_2,'.');
title('Plot of SumMean against Contrast for Direction 2');
xlabel('SumMean');
ylabel('Contrast');

figure;
plot(Variance_direction_3, Contrast_direction_3,'.');
title('Plot of Variance against Contrast for Direction 3');
xlabel('Variance');
ylabel('Contrast');


figure;
plot(Variance_direction_2, Contrast_direction_2,'.');
title('Plot of Variance against Contrast for Direction 2');
xlabel('Variance');
ylabel('Contrast');

figure;
plot3(Variance_direction_2, Contrast_direction_2, Energy_direction_2,'.');
title('Plot of Var Vs Contrast Vs Energy for Direction 1');
xlabel('Entropy');
ylabel('Contrast');
zlabel('Energy');


