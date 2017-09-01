data0=[dtacc2',dttime2'];
data0class=['DTC';'DTC';'DTC';'DTC';'DTC';'DTC'];
data0type=['ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2'];
data1=[dtacc3',dttime3'];
data1class=['DTC';'DTC';'DTC';'DTC'];
data1type=['ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3'];
data2=[nbacc2',nbtime2'];
data2class=['NBC';'NBC';'NBC';'NBC';'NBC';'NBC'];
data2type=['ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2'];
data3=[nbacc3',nbtime3'];
data3class=['NBC';'NBC';'NBC';'NBC'];
data3type=['ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3'];
data4=[knnacc2',knntime2'];
data4class=['KNN';'KNN';'KNN';'KNN';'KNN';'KNN'];
data4type=['ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2';'ATTRIBUTE 2'];
data5=[knnacc3',knntime3'];
data5type=['ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3';'ATTRIBUTE 3'];
data5class=['KNN';'KNN';'KNN';'KNN'];
data6=[nbacc nbtime];
data6class='NBC';
data6type='ATTRIBUTE 4';
data7=[knnacc knntime];
data7class='KNN';
data7type='ATTRIBUTE 4';
data8=[dtacc dttime];
data8class='DTC';
data8type='ATTRIBUTE 4';
%wholedataset accuracy time
accuracy_time_data=[data0;data1;data2;data3;data4;data5;data6;data7;data8];
accuracy_time_datatype=[data0type;data1type;data2type;data3type;data4type;data5type;data6type;data7type;data8type];
accuracy_time_dataclass=[data0class;data1class;data2class;data3class;data4class;data5class;data6class;data7class;data8class];
%4 attributes accuracy time
accuracy_time4=[data6;data7;data8];
accuracy_time4class=[data6class;data7class;data8class];
% 2 attribute accuracy time
accuracy_time2=[data0;data2;data4];
accuracy_time2class=[data0class;data2class;data4class];
%3 attribute accuracy time
accuracy_time3=[data1;data3;data5];
accuracy_time3class=[data1class;data3class;data5class];
%accuracy time for 2 attributes
figure('Name','ACCURACY v/s TIME FOR CLASSIFICATION OVER 2 ATTRIBUTES');
gscatter(accuracy_time2(:,2),accuracy_time2(:,1),accuracy_time2class);
grid on;
ylim([65 100]);
title('ACCURACY v/s TIME FOR CLASSIFICATION OVER 2 ATTRIBUTES');
%accuracy time for 3 attributes
figure('Name','ACCURACY v/s TIME FOR CLASSIFICATION OVER 3 ATTRIBUTES');
gscatter(accuracy_time3(:,2),accuracy_time3(:,1),accuracy_time3class); 
grid on;
ylim([80 100]);
title('ACCURACY v/s TIME FOR CLASSIFICATION OVER 3 ATTRIBUTES');
% %accuracy time for 4 attributes
figure('Name','ACCURACY v/s TIME FOR CLASSIFICATION OVER 4 ATTRIBUTES');
gscatter(accuracy_time4(:,2),accuracy_time4(:,1),accuracy_time4class); 
grid on;
ylim([90 100]);
title('ACCURACY v/s TIME FOR CLASSIFICATION OVER 4 ATTRIBUTES');

accuracy over entire dataset
figure('Name','ACCURACY v/s TIME FOR ALL CLASSIFIERS');
gscatter(accuracy_time_data(:,2),accuracy_time_data(:,1),accuracy_time_dataclass);
line(data7(:,2),data7(:,1),'marker','p','color','k','linewidth',1);
line(data0(3,2),data0(3,1),'marker','d','color','k','linewidth',1);
line(data0(3,2),data0(3,1),'marker','s','color','k','linewidth',1);
line(data5(4,2),data5(4,1),'marker','p','color','k','linewidth',1);
line(data3(2,2),data3(2,1),'marker','p','color','k','linewidth',1);
line(data8(:,2),data8(:,1),'marker','o','color','k','linewidth',1,'linestyle','none');
line(data3(4,2),data3(4,1),'marker','o','color','k','linewidth',1,'linestyle','none');
line(data6(:,2),data6(:,1),'marker','o','color','k','linewidth',1,'linestyle','none');
line(data1(4,2),data1(4,1),'marker','o','color','k','linewidth',1,'linestyle','none');
x1=[data7(:,2),data5(4,2)];
y1=[data7(:,1),data5(4,1)];
x2=[data6(:,2),data3(4,2)];
y2=[data6(:,1),data3(4,1)];
x3=[data8(:,2),data1(4,2)];
y3=[data8(:,1),data1(4,1)];
line(x1,y1,'linewidth',1,'color','k');
line(x2,y2,'linewidth',1,'color','k');
line(x3,y3,'linewidth',1,'color','k');
grid on;
%line(accuracy_time_data(:,2),accuracy_time_data(:,1),'marker','*','color','k','linestyle','none');
ylim([65 100]);
title('ACCURACY v/s TIME FOR ALL CLASSIFIERS');
xlabel 'Time (s)';
ylabel 'Accuracy (%)';
legend('DECISION TREE CLASSIFIER','NAIVE BAYE''S CLASSIFIER','K-NEAREST NEIGHBOUR CLASSIFIER','MOST ACCURATE CLASSIFIER','FASTEST CLASSIFIER','PREFERRED CLASSIFIER','LOCATION','BEST');