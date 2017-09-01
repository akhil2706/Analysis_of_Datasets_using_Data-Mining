nbacc=100-5.3333;
knnacc=100-4;
dtacc=100-8;
wholeset=[nbacc knnacc dtacc];
figure('Name','ACCURACY COMPARISON');
ylim([0 100]);
bar(wholeset,0.3);
set(gca,'XTickLabel',{'NBC','KNNC','DTC'},'YGrid','on');
title('ACCURACY COMPARISON');
