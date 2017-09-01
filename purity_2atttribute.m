kp2=[82, 88,82.67,92.67,92.67,96];
ahp2=[35.33,67.33,34.67,66.67,66.67,67.33];
figure('Name','AVERAGE PURITY COMPARISON');
bar([kp2;ahp2]);
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('PURITY OF CLUSTER MODELS OVER 2 ATTRIBUTES');
%averaged purity
figure('Name','PURITY COMPARISON');
kpavg=mean(kp2);
ahpavg=mean(ahp2);
bar([kpavg;ahpavg],0.3);
ylabel 'Accuracy (%)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE PURITY OF CLUSTER MODELS OVER 2 ATTRIBUTES');

%silhouette graphs

ks2=[0.6201,0.7560,0.6813,0.7612,0.7067,0.8055];
ahs2=[0.1028,0.4068,-0.3799,0.8019,0.6777,0.6221];
figure('Name','SILHOUETTE VALUE COMPARISON');
bar([ks2;ahs2]);
ylabel 'Silhouette Value';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('SILHOUETTE VALUES OF CLUSTER MODELS OVER 2 ATTRIBUTES');
 %averaged silvalue
figure('Name','AVERAGED SILHOUETTE VALUE COMPARISON');
ksavg=mean(ks2);
ahsavg=mean(ahs2);
bar([ksavg ahsavg],0.3);
ylabel 'Silhouette Value';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE SILHOUETTE VALUE  OF CLUSTER MODELS OVER 2 ATTRIBUTES');