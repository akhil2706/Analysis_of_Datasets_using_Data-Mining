%CODE FOR NAIVE BAYES MATRIX AND PRODUCING GRAPH:
datafile;
%CLASSIFICATION OVER THE WHOLEDATASET
nb=fitcnb(traindata,trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass=predict(nb,testdata);
toc
k=1;
flag=0;
% code for getting indices of misclassified points.
for i=1:length(predclass)
if strcmp(predclass(i),testclass(i)) == 0
    diff(k,1)=i;
    k=k+1;
    flag=1;
end
end
%code for displaying the loss of the classifier.
nbloss=(size(diff)./size(testclass)).*100;
nbloss=nbloss(1,1);
str1='The loss percentage is: ';
str0=num2str(nbloss);
str2=' %';
str3=strcat(str0,str2);
loss=strcat(str1,str3);
display(loss);
%graph on attribute 1 and 2
figure('Name','NAIVE BAYE''S CLASSIFICATION OVER THE WHOLEDATASET');
subplot(6,2,1)
gscatter(testdata(:,1),testdata(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')

subplot(6,2,2)
gscatter(testdata(:,1),testdata(:,2),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
%graph on attribute 1 and 3
subplot(6,2,3)
gscatter(testdata(:,1),testdata(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')

subplot(6,2,4)
gscatter(testdata(:,1),testdata(:,3),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
%graph on attribute 1 and 4
subplot(6,2,5)
gscatter(testdata(:,1),testdata(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')

subplot(6,2,6)
gscatter(testdata(:,1),testdata(:,4),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
%graph on attribute 2 and 3
subplot(6,2,7)
gscatter(testdata(:,2),testdata(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')

subplot(6,2,8)
gscatter(testdata(:,2),testdata(:,3),predclass);
if flag==1 
line(testdata(diff,2),testdata(diff,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%graph on attribute 2 and 4
subplot(6,2,9)
gscatter(testdata(:,2),testdata(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');

subplot(6,2,10)
gscatter(testdata(:,2),testdata(:,4),predclass);
if flag==1 
line(testdata(diff,2),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%graph on attribute 3 and 4
subplot(6,2,11);
gscatter(testdata(:,3),testdata(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

subplot(6,2,12);
gscatter(testdata(:,3),testdata(:,4),predclass);
if flag==1 
line(testdata(diff,3),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

%Graph BASED ON attribute 1, 2&3
figure('Name','NAIVE BAYE''S CLASSIFICATION OVER THE WHOLEDATASET');
subplot(4,2,1)
grid on;
gscatter3(testdata(:,1),testdata(:,2),testdata(:,3),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';
subplot(4,2,2);
grid on;
gscatter3(testdata(:,1),testdata(:,2),testdata(:,3),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,2),testdata(diff,3),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph BASED ON 2, 3 & 4
subplot(4,2,3);
grid on;
gscatter3(testdata(:,2),testdata(:,3),testdata(:,4),testclass);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';
subplot(4,2,4);
grid on;
gscatter3(testdata(:,2),testdata(:,3),testdata(:,4),predclass);
line(testdata(diff,2),testdata(diff,3),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION';

%graph BASED ON 1, 3 & 4
subplot(4,2,5);
grid on;
gscatter3(testdata(:,1),testdata(:,3),testdata(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';
subplot(4,2,6);
grid on;
gscatter3(testdata(:,1),testdata(:,3),testdata(:,4),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,3),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph BASED ON 1, 2 & 4
subplot(4,2,7);
grid on;
gscatter3(testdata(:,1),testdata(:,2),testdata(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';
subplot(4,2,8);
grid on;
gscatter3(testdata(:,1),testdata(:,2),testdata(:,4),predclass);
if flag==1 
line(testdata(diff,1),testdata(diff,2),testdata(diff,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION'

%CONFUSION MATRIX:
conf=confusionmat(testclass,predclass);
display(conf);




