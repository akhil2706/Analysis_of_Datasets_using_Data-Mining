nbaccfull=[94.6667,88,96,94.6667,94.6667,80,89.3333,90.6667,90.6667,94.6667,94.6667];
knnaccfull=[96,94.6667,93.3333,93.3333,96,93.3333,89.3333,93.3333,88,92,93.3333];
dtaccfull=[92,92,93.3333,88,92,69.3333,92,94.6667,93.3333,89.3333,93.3333];
figure('Name','ACCURACY COMPARISON');
bar([nbaccfull;knnaccfull;dtaccfull]);
ylabel 'Accuracy (%)';
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('ACCURACY COMPARISON');
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
%average for each algorithm
nbfullaccavg=mean(nbaccfull);
knnfullaccavg=mean(knnaccfull);
dtfullaccavg=mean(dtaccfull);
figure('Name','ACCURACY COMPARISON');
bar([nbfullaccavg;knnfullaccavg;dtfullaccavg],0.3);
grid on;
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
title('AVERAGE ACCURACY COMPARISON OF ALL CLASSIFIERS FOR EACH ALGORITHM');