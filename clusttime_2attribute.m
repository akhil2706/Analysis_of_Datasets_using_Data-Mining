kt2=[0.00891975,0.00694425,0.0070455,0.0097835,0.0075335,0.00829];
aht2=[0.005569,0.005797,0.00942,0.008267,0.02518,0.008337];
figure('Name','TIME COMPARISON');
ktavg=mean(kt2);
ahtavg=mean(aht2);
bar([ktavg ahtavg],0.3);
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE TIME OF EACH CLASSIFIER OVER 2 ATTRIBUTES');
figure('Name','TIME COMPARISON');
%average timings
ktavg=mean(kt2);
ahtavg=mean(aht2);
bar([ktavg;ahtavg],0.3);
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE TIME OF EACH CLASSIFIER OVER 3 ATTRIBUTES');