nbtimefull=[0.1691,0.020681,0.021303,0.023927,0.018614,0.010596,0.016948,0.013831,0.016223,0.013999,0.01191];
knntimefull=[0.19601,0.026067,0.027566,0.019711,0.024565,0.017959,0.015347,0.018308,0.018493,0.014737,0.01731];
dttimefull=[0.129402,0.007909,0.008138,0.007875,0.009617,0.0064,0.006715,0.004689,0.007387,0.006183,0.005095];
figure('Name','TIME COMPARISON');
bar([nbtimefull;knntimefull;dttimefull]);
ylabel 'Time (s)';
legend('PETAL WIDTH,PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH, SEPAL WIDTH & SEPAL LENGTH','PETAL WIDTH, PETAL LENGTH & SEPAL LENGTH','SEPAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL LENGTH','PETAL WIDTH & SEPAL LENGTH','PETAL LENGTH & SEPAL WIDTH','PETAL WIDTH & SEPAL WIDTH','PETAL WIDTH & PETAL LENGTH','location','best');
title('TIME COMPARISON');
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
%average for each algorithm
nbfulltime=mean(nbtimefull);
knnfulltime=mean(knntimefull);
dtfulltime=mean(dttimefull);
figure('Name','TIME COMPARISON');
bar([nbfulltime;knnfulltime;dtfulltime],0.3);
grid on;
ylabel 'Time (s)';
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
title('AVERAGE TIME COMPARISON OF ALL CLASSIFIERS FOR EACH ALGORITHM');