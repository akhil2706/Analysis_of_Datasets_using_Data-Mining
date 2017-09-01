kp=89.33;
ahp=68;
wholeset=[kp ahp];
figure('Name','ACCURACY COMPARISON');
ylim([0 100]);
bar(wholeset,0.3);
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE PURITY COMPARISON OVER THE WHOLEDATASET');
%silhouette graphs
ks=0.7357;
ahs=0.6184;
wholeset_s=[ks ahs];
figure('Name','SILHOUETTE VALUE COMPARISON');
ylim([0 100]);
bar(wholeset_s,0.3);
ylabel 'Silhouette Values';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE SILHOUETTE VALUE OVER THE WHOLE DATASET');
