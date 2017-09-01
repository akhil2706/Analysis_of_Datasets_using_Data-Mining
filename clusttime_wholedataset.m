k_time=[0.0097835,0.0075335,0.00829,0.0090135,0.00589225,0.00891975,0.00694425,0.0070455,0.0097835,0.0075335,0.00829];
a_time=[0.009507,0.010582,0.007566,0.004728,0.005387,0.005569,0.005797,0.00942,0.008267,0.02518,0.008337];
timebar=[k_time;a_time];
figure;
bar(timebar);
grid on;
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means','Agglomerative Hierarchical Clustering'},'YGrid','on');
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('TIME COMPARISON')
%average timings
ktavg=mean(k_time);
ahtavg=mean(a_time);
bar([ktavg;ahtavg],0.3);
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE TIME OF EACH CLASSIFIER OF EACH ALGORITHM OVER THE WHOLEDATASET');