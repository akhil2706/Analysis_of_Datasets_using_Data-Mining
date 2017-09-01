ktime3=[0.0075335,0.00829,0.0090135,0.00589225];
ahtime3=[0.010582,0.007566,0.004728,0.005387];

figure('Name','TIME COMPARISON');
bar([kttime3;ahttime3]);
ylabel 'Accuracy (%)';
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('ACCURACY COMPARISON');
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
%averahe timings
figure('Name','TIME COMPARISON');
ktavg=mean(ktime3);
ahtavg=mean(ahtime3);
bar([ktavg;ahtavg],0.3);
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE TIME OF EACH CLASSIFIER OVER 3 ATTRIBUTES');