kp3=[88,95.33,82.67,89.33];
ahp3=[68,68,66.67,69.33];
figure('Name','AVERAGE PURITY COMPARISON');
bar([kp3;ahp3]);
grid on;
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('PURITY OF CLUSTER MODELS OVER 3 ATTRIBUTES');
%averaged purity
 figure('Name','PURITY COMPARISON');
kpavg=mean(kp3);
ahpavg=mean(ahp3);
bar([kpavg;ahpavg],0.3);
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
ylabel 'Accuracy (%)';
title('AVERAGE PURITY OF EACH CLUSTER MODEL OVER 3 ATTRIBUTES');

%silhouette graphs
ks3=[0.7330,0.7659,0.6654,0.7523];
ahs3=[0.6433,0.5985,0.5999,0.5934];
ks2=[0.6201,0.7560,0.6813,0.7612,0.7067,0.8055];
ahs2=[0.1028,0.4068,-0.3799,0.8019,0.6777,0.6221];
figure('Name','SILHOUETTE VALUE COMPARISON');
bar([ks3;ahs3]);
grid on;
ylabel 'Silhouette Value';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('SILHOUETTE VALUES OF CLUSTER MODELS OVER 3 ATTRIBUTES');
%averaged silvalue
figure('Name','SILHOUETTE VALUE COMPARISON');
ksavg=mean(ks3);
ahsavg=mean(ahs3);
bar([ksavg;ahsavg],0.3);
ylabel 'Silhouette Value';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE SILHOUETTE VALUE OF EACH CLUSTER MODEL OVER 3 ATTRIBUTES');