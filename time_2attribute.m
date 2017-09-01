nbtime2=[0.010596,0.016948,0.013831,0.016223,0.013999,0.01191];
knntime2=[0.017959,0.015347,0.018308,0.018493,0.014737,0.01731];
dttime2=[0.0064,0.006715,0.004689,0.007387,0.006183,0.005095];
figure('Name','TIME COMPARISON');
bar([nbtime2;knntime2;dttime2]);
grid on;
legend('SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
ylabel 'TIME (s)';
title('TIME COMPARISON');
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
figure('Name','TIME COMPARISON');
nbavg=mean(nbtime2);
knnavg=mean(knntime2);
dtavg=mean(dttime2);
bar([nbavg knnavg dtavg],0.4);
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
title('AVERAGE TIME OF EACH CLASSIFIER OVER 2 ATTRIBUTES');