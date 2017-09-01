datafile;
%CLASSIFICATION BASED ON ATTRIBUTE 1 & 2
att1=testdata;
knn1=fitcknn(traindata(:,[1 2]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass1=predict(knn1,testdata(:,[1 2]));
toc
%calculating indices of misclassified points
k=1;
flag=0;
for i=1:length(predclass1)
if strcmp(predclass1(i),testclass(i)) == 0
    diff1(k,1)=i;
    k=k+1;
    flag=1;
end
end
% loss percentage
knnloss=(size(diff1)./size(testclass)).*100;
str11='The loss percentage is: ';
str01=num2str(knnloss(1,1));
str21=' %';
str31=strcat(str01,str21);
loss=strcat(str11,str31);
display(loss);
%graph wrt attribute 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 1 & 2');
subplot(6,2,1)
gscatter(att1(:,1),att1(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2)
gscatter(att1(:,1),att1(:,2),predclass1);
 if flag==1
line(testdata(diff1,1),testdata(diff1,2),'marker','o','markersize',10,'linestyle','none');
 end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3)
gscatter(att1(:,1),att1(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
subplot(6,2,4)
gscatter(att1(:,1),att1(:,3),predclass1);
if flag==1
line(testdata(diff1,1),testdata(diff1,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att1(:,1),att1(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att1(:,1),att1(:,4),predclass1);
if flag==1
line(testdata(diff1,1),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none')
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att1(:,2),att1(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att1(:,2),att1(:,3),predclass1);
if flag==1
line(testdata(diff1,2),testdata(diff1,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att1(:,2),att1(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att1(:,2),att1(:,4),predclass1);
if flag==1
line(testdata(diff1,2),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att1(:,3),att1(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12)
gscatter(att1(:,3),att1(:,4),predclass1);
if flag==1
line(testdata(diff1,3),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
% CONFUSION MATRIX:
conf1=confusionmat(testclass,predclass1);
display(conf1);

%CLASSIFICATION BASED ON ATTRIBUTE 1 & 3
att2=testdata;
knn2=fitcknn(traindata(:,[1 3]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass2=predict(knn2,testdata(:,[1 3]));
toc
%calculating miscalssified indices
flag=0;
p=1;
for i=1:length(predclass2)
if strcmp(predclass2(i),testclass(i)) == 0
    diff2(p,1)=i;
    p=p+1;
    flag=1;
end
end
%calculating loss
knnloss=(size(diff2)./size(testclass)).*100;
str12='The loss percentage is: ';
str02=num2str(knnloss(1,1));
str22=' %';
str32=strcat(str02,str22);
loss=strcat(str12,str32);
display(loss);
%graph wrt att 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 1 & 3');
subplot(6,2,1);
gscatter(att2(:,1),att2(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att2(:,1),att2(:,2),predclass2);
if flag==1
line(testdata(diff2,1),testdata(diff2,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3);
gscatter(att2(:,1),att2(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,4);
gscatter(att2(:,1),att2(:,3),predclass2);
if flag==1
line(testdata(diff2,1),testdata(diff2,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att2(:,1),att2(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att2(:,1),att2(:,4),predclass2);
if flag==1
line(testdata(diff2,1),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att2(:,2),att2(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att2(:,2),att2(:,3),predclass2);
if flag==1
line(testdata(diff2,2),testdata(diff2,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att2(:,2),att2(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att2(:,2),att2(:,4),predclass2);
if flag==1
line(testdata(diff2,2),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att2(:,3),att2(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att2(:,3),att2(:,4),predclass2);
if flag==1
line(testdata(diff2,3),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%CONFUSION MATRIX:
 conf2=confusionmat(testclass,predclass2);
 display(conf2);

%CLASSIFICATION BASED ON ATTRIBUTE 1 & 4
att3=testdata;
knn3=fitcknn(traindata(:,[1 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass3=predict(knn3,testdata(:,[1 4]));
toc
%calculating misclassified points
l=1;
flag=0;
for i=1:length(predclass3)
if strcmp(predclass3(i),testclass(i)) == 0
    diff3(l,1)=i;
    l=l+1;
    flag=1;
end
end
%calcualating loss
knnloss=(size(diff3)./size(testclass)).*100;
str13='The loss percentage is: ';
str03=num2str(knnloss(1,1));
str23=' %';
str33=strcat(str03,str23);
loss=strcat(str13,str33);
display(loss);
%graph wrt attribute 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 1 & 4');
subplot(6,2,1);
gscatter(att3(:,1),att3(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att3(:,1),att3(:,2),predclass3);
if flag==1
line(testdata(diff3,1),testdata(diff3,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3);
gscatter(att3(:,1),att3(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att3(:,1),att3(:,3),predclass3);
if flag==1
line(testdata(diff3,1),testdata(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att3(:,1),att3(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att3(:,1),att3(:,4),predclass3);
if flag==1
line(testdata(diff3,1),testdata(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att3(:,2),att3(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att3(:,2),att3(:,3),predclass3);
if flag==1
line(testdata(diff3,2),testdata(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att3(:,2),att3(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att3(:,2),att3(:,4),predclass3);
if flag==1
line(testdata(diff3,2),testdata(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att3(:,3),att3(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att3(:,3),att3(:,4),predclass3);
if flag==1
line(testdata(diff3,3),testdata(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');

% CONFUSION MATRIX:
conf3=confusionmat(testclass,predclass3);
display(conf3);

%CLASSIFICATION BASED ON ATTRIBUTE 2 & 3
att4=testdata;
knn4=fitcknn(traindata(:,[2 3]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass4=predict(knn4,testdata(:,[2 3]));
toc
%calculating misclassified points
m=1;
flag=0;
for i=1:length(predclass4)
if strcmp(predclass4(i),testclass(i)) == 0
    diff4(m,1)=i;
    m=m+1;
    flag=1;
end
end
%calculating loss
knnloss=(size(diff4)./size(testclass)).*100;
str14='The loss percentage is: ';
str04=num2str(knnloss(1,1));
str24=' %';
str34=strcat(str04,str24);
loss=strcat(str14,str34);
display(loss);
%graph wrt attribute 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 2 & 3')
subplot(6,2,1);
gscatter(att4(:,1),att4(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att4(:,1),att4(:,2),predclass4);
if flag==1
line(testdata(diff4,1),testdata(diff4,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3);
gscatter(att4(:,1),att4(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att4(:,1),att4(:,3),predclass4);
if flag==1
line(testdata(diff4,1),testdata(diff4,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att4(:,1),att4(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att4(:,1),att4(:,4),predclass4);
if flag==1
line(testdata(diff4,1),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att4(:,2),att4(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att4(:,2),att4(:,3),predclass4);
if flag==1
line(testdata(diff4,2),testdata(diff4,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att4(:,2),att4(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att4(:,2),att4(:,4),predclass4);
if flag==1
line(testdata(diff4,2),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att4(:,3),att4(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att4(:,3),att4(:,4),predclass4);
if flag==1
line(testdata(diff4,3),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');

% %CONFUSION MATRIX:
 conf4=confusionmat(testclass,predclass4);
 display(conf4);

%CLASSIFICATION BASED ON ATTRIBUTE 2 & 4
att5=testdata;
knn5=fitcknn(traindata(:,[2 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass5=predict(knn5,testdata(:,[2 4]));
toc
%calculating misclassified points
n=1;
flag=0;
for i=1:length(predclass5)
if strcmp(predclass5(i),testclass(i)) == 0
    diff5(n,1)=i;
    n=n+1;
    flag=1;
end
end
%calculating loss
knnloss=(size(diff5)./size(testclass)).*100;
str15='The loss percentage is: ';
str05=num2str(knnloss(1,1));
str25=' %';
str35=strcat(str05,str25);
loss=strcat(str15,str35);
display(loss);
%graph wrt attribute 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 2 & 4');
subplot(6,2,1);
gscatter(att5(:,1),att5(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att5(:,1),att5(:,2),predclass5);
if flag==1
line(testdata(diff5,1),testdata(diff5,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3);
gscatter(att5(:,1),att5(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att5(:,1),att5(:,3),predclass5);
if flag==1
line(testdata(diff5,1),testdata(diff5,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att5(:,1),att5(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att5(:,1),att5(:,4),predclass5);
if flag==1
line(testdata(diff5,1),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');

%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att5(:,2),att5(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att5(:,2),att5(:,3),predclass5);
if flag==1
line(testdata(diff5,2),testdata(diff5,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att5(:,2),att5(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att5(:,2),att5(:,4),predclass5);
if flag==1
line(testdata(diff5,2),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att5(:,3),att5(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att5(:,3),att5(:,4),predclass5);
if flag==1
line(testdata(diff5,3),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
% CONFUSION MATRIX:
 conf5=confusionmat(testclass,predclass5);
display(conf5);

%CLASSIFICATION BASED ON ATTRIBUTE 3 & 4
att6=testdata;
knn6=fitcknn(traindata(:,[3 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass6=predict(knn6,testdata(:,[3 4]));
toc
%calculating indices of misclassified points
n=1;
flag=0;
for i=1:length(predclass6)
if strcmp(predclass6(i),testclass(i)) == 0
    diff6(n,1)=i;
    n=n+1;
    flag=1;
end
end
%calculating loss
knnloss=(size(diff6)./size(testclass)).*100;
str16='The loss percentage is: ';
str06=num2str(knnloss(1,1));
str26=' %';
str36=strcat(str06,str26);
loss=strcat(str16,str36);
display(loss);
%graph wrt attribute 1,2
figure('Name','KNN CLASSIFICATION BASED ON ATTRIBUTE 3 & 4');
subplot(6,2,1);
gscatter(att6(:,1),att6(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att6(:,1),att6(:,2),predclass6);
if flag==1
line(testdata(diff6,1),testdata(diff6,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('SEPAL WIDTH (cm)');
%graph wrt attribute 1,3
subplot(6,2,3);
gscatter(att6(:,1),att6(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att6(:,1),att6(:,3),predclass6);
if flag==1
line(testdata(diff6,1),testdata(diff6,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 1,4
subplot(6,2,5);
gscatter(att6(:,1),att6(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att6(:,1),att6(:,4),predclass6);
if flag==1
line(testdata(diff6,1),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 2,3
subplot(6,2,7);
gscatter(att6(:,2),att6(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att6(:,2),att6(:,3),predclass6);
if flag==1
line(testdata(diff6,2),testdata(diff6,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL LENGTH (cm)');
%graph wrt attribute 2,4
subplot(6,2,9);
gscatter(att6(:,2),att6(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att6(:,2),att6(:,4),predclass6);
if flag==1
line(testdata(diff6,2),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('SEPAL WIDTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
%graph wrt attribute 3,4
subplot(6,2,11);
gscatter(att6(:,3),att6(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att6(:,3),att6(:,4),predclass6);
if flag==1
line(testdata(diff6,3),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION','fontsize',10);
xlabel('PETAL LENGTH (cm)','fontsize',10);
ylabel('PETAL WIDTH (cm)');

%CONFUSION MATRIX:
conf6=confusionmat(testclass,predclass6);
display(conf6);