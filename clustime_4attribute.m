ktime=0.0097835;
ahtime=0.009507;
wholeset=[ktime ahtime];
figure('Name','TIME COMPARISON');
ylim([0 100]);
bar(wholeset,0.3);
ylabel 'Time (s)';
set(gca,'XTickLabel',{'K-Means Clustering','Agglomerative Hierarchical Clustering'},'YGrid','on');
title('AVERAGE TIME COMPARISON');
