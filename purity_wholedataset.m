k_purity=[89.33,88,95.33,82.67,89.33,82,88,82.67,92.67,92.67,96];
a_purity=[68,68,68,66.67,69.33,35.33,67.33,34.67,66.67,66.67,67.33];
k_sil=[0.7357,0.7330,0.7659,0.6654,0.7523,0.6201,0.7560,0.6813,0.7612,0.7067,0.8055];
a_sil=[0.6184,0.6433,0.5985,0.5999,0.5934,0.1028,0.4068,-0.3799,0.8019,0.6777,0.6221];
clustbar=[k_purity;a_purity];
silbar=[k_sil;a_sil];
figure;
bar(clustbar);
grid on;
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means','Agglomerative Hierarchical Clustering'},'YGrid','on');
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('ACCURACY COMPARISON');
%averaged bar graph
figure;
kpavg=mean(k_purity);
ahpavg=mean(a_purity);
bar([kpavg;ahpavg],0.3);
grid on;
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE ACCURACY COMPARISON');
%silhouette graphs
figure;
bar(clustbar);
grid on;
ylabel 'Silhouette Value';
set(gca,'XTickLabel',{'K-Means','Agglomerative Hierarchical Clustering'},'YGrid','on');
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('SILHOUETTE VALUE COMPARISON');
%averaged bar graph
figure;
ksavg=mean(k_sil);
ahsavg=mean(a_sil);
bar([ksavg;ahsavg],0.3);
grid on;
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE ACCURACY COMPARISON');
