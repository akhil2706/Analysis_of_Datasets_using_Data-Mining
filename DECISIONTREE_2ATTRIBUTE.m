%datafile;
%CLASSIFICATION BASED ON ATTRIBUTE 1 & 2
att1=testdata;
dt1=fitctree(traindata(:,[1 2]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass1=predict(dt1,testdata(:,[1 2]));
toc
k=1;
flag=0;
%code for calculating misclassified indices
for i=1:length(predclass1)
if strcmp(predclass1(i),testclass(i)) == 0
    diff1(k,1)=i;
    k=k+1;
    flag=1;
end
end
%code for calculating loss
dtloss=(size(diff1)./size(testclass)).*100;
str11='The loss percentage is: ';
str01=num2str(dtloss(1,1));
str21=' %';
str31=strcat(str01,str21);
loss=strcat(str11,str31);
display(loss);
%graph based on attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 1 & 2');
subplot(6,2,1)
gscatter(att1(:,1),att1(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2)
gscatter(att1(:,1),att1(:,2),predclass1);
if flag==1 
line(testdata(diff1,1),testdata(diff1,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%graph based on attribute 1,3
subplot(6,2,3)
gscatter(att1(:,1),att1(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
subplot(6,2,4)
gscatter(att1(:,1),att1(:,3),predclass1);
if flag==1 
line(testdata(diff1,1),testdata(diff1,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
%graph based on attribute 1,4
subplot(6,2,5);
gscatter(att1(:,1),att1(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att1(:,1),att1(:,4),predclass1);
if flag==1 
line(testdata(diff1,1),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none')
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%graph based on attribute 2,3
subplot(6,2,7);
gscatter(att1(:,2),att1(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att1(:,2),att1(:,3),predclass1);
if flag==1 
line(testdata(diff1,2),testdata(diff1,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%graph based on attribute 2,4
subplot(6,2,9);
gscatter(att1(:,2),att1(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att1(:,2),att1(:,4),predclass1);
if flag==1 
line(testdata(diff1,2),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%graph based on attribute 3,4
subplot(6,2,11);
gscatter(att1(:,3),att1(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att1(:,3),att1(:,4),predclass1);
if flag==1 
line(testdata(diff1,3),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
% CONFUSION MATRIX:
conf1=confusionmat(testclass,predclass1);
%VISUAL TREE
view(dt1);
%CLASSIFICATION TREE
view(dt1,'mode','graph');

% CLASSIFICATION BASED ON ATTRIBUTE 1 & 3
att2=testdata;
dt2=fitctree(traindata(:,[1 3]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass2=predict(dt2,testdata(:,[1 3]));
toc
%code for calculating misclassified points
p=1;
flag=0;
for i=1:length(predclass2)
if strcmp(predclass2(i),testclass(i)) == 0
    diff2(p,1)=i;
    p=p+1;
    flag=1;
end
end
% calculating loss
dtloss=(size(diff2)./size(testclass)).*100;
str12='The loss percentage is: ';
str02=num2str(dtloss(1,1));
str22=' %';
str32=strcat(str02,str22);
loss=strcat(str12,str32);
display(loss);
%graph based on attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 1 & 3');
subplot(6,2,1);
gscatter(att2(:,1),att2(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att2(:,1),att2(:,2),predclass2);
if flag==1 
line(testdata(diff2,1),testdata(diff2,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%graph based on attribute 1,3
subplot(6,2,3);
gscatter(att2(:,1),att2(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,4);
gscatter(att2(:,1),att2(:,3),predclass2);
if flag==1 
line(testdata(diff2,1),testdata(diff2,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGTH (cm)');
%graph based on attribute 1,4
subplot(6,2,5);
gscatter(att2(:,1),att2(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att2(:,1),att2(:,4),predclass2);
if flag==1 
line(testdata(diff2,1),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%graph based on attribute 2,3
subplot(6,2,7);
gscatter(att2(:,2),att2(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att2(:,2),att2(:,3),predclass2);
if flag==1 
line(testdata(diff2,2),testdata(diff2,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%graph based on attribute 2,4
subplot(6,2,9);
gscatter(att2(:,2),att2(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att2(:,2),att2(:,4),predclass2);
if flag==1 
line(testdata(diff2,2),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%graph based on attribute 3,4
subplot(6,2,11);
gscatter(att2(:,3),att2(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att2(:,3),att2(:,4),predclass2);
if flag==1 
line(testdata(diff2,3),testdata(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%CONFUSION MATRIX:
conf2=confusionmat(testclass,predclass2);
%VISUAL TREE
view(dt2);
%CLASSIFICATION TREE
view(dt2,'mode','graph');

% CLASSIFICATION BASED ON ATTRIBUTE 1 & 4
att3=testdata;
dt3=fitctree(traindata(:,[1 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass3=predict(dt3,testdata(:,[1 4]));
toc
l=1;
%cALCULATING MISCLASSIFIED POINTS
flag=0;
for i=1:length(predclass3)
if strcmp(predclass3(i),testclass(i)) == 0
    diff3(l,1)=i;
    l=l+1;
    flag=1;
end
end
%CALCULATING LOSS
dtloss=(size(diff3)./size(testclass)).*100;
str13='The loss percentage is: ';
str03=num2str(dtloss(1,1));
str23=' %';
str33=strcat(str03,str23);
loss=strcat(str13,str33);
display(loss);
%GRAPH WRT attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 1 & 4');
subplot(6,2,1);
gscatter(att3(:,1),att3(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att3(:,1),att3(:,2),predclass3);
if flag==1 
line(testdata(diff3,1),testdata(diff3,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%GRAPH WRT attribute 1,3
subplot(6,2,3);
gscatter(att3(:,1),att3(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att3(:,1),att3(:,3),predclass3);
if flag==1 
line(testdata(diff3,1),testdata(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
%GRAPH WRT attribute 1,4
subplot(6,2,5);
gscatter(att3(:,1),att3(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att3(:,1),att3(:,4),predclass3);
if flag==1 
line(testdata(diff3,1),testdata(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 2,3
subplot(6,2,7);
gscatter(att3(:,2),att3(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att3(:,2),att3(:,3),predclass3);
if flag==1 
line(testdata(diff3,2),testdata(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%GRAPH WRT attribute 2,4
subplot(6,2,9);
gscatter(att3(:,2),att3(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att3(:,2),att3(:,4),predclass3);
if flag==1 
line(testdata(diff3,2),testdata(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 3,4
subplot(6,2,11);
gscatter(att3(:,3),att3(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att3(:,3),att3(:,4),predclass3);
if flag==1 
line(testdata(diff3,3),testdata(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

% CONFUSION MATRIX:
conf3=confusionmat(testclass,predclass3);
display(conf3);
%VISUAL TREE
view(dt3);
%CLASSIFICATION TREE
view(dt3,'mode','graph');

%CLASSIFICATION BASED ON ATTRIBUTE 2 & 3
att4=testdata;
dt4=fitctree(traindata(:,[2 3]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass4=predict(dt4,testdata(:,[2 3]));
toc
%calculating misclassified indices
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
dtloss=(size(diff4)./size(testclass)).*100;
str14='The loss percentage is: ';
str04=num2str(dtloss(1,1));
str24=' %';
str34=strcat(str04,str24);
loss=strcat(str14,str34);
display(loss);
%GRAPH WRT attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 2 & 3')
subplot(6,2,1);
gscatter(att4(:,1),att4(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att4(:,1),att4(:,2),predclass4);
if flag==1 
line(testdata(diff4,1),testdata(diff4,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%GRAPH WRT attribute 1,3
subplot(6,2,3);
gscatter(att4(:,1),att4(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att4(:,1),att4(:,3),predclass4);
if flag==1 
line(testdata(diff4,1),testdata(diff4,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
%GRAPH WRT attribute 1,4
subplot(6,2,5);
gscatter(att4(:,1),att4(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att4(:,1),att4(:,4),predclass4);
if flag==1 
line(testdata(diff4,1),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 2,3
subplot(6,2,7);
gscatter(att4(:,2),att4(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att4(:,2),att4(:,3),predclass4);
if flag==1 
line(testdata(diff4,2),testdata(diff4,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%GRAPH WRT attribute 2,4
subplot(6,2,9);
gscatter(att4(:,2),att4(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att4(:,2),att4(:,4),predclass4);
if flag==1 
line(testdata(diff4,2),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 3,4
subplot(6,2,11);
gscatter(att4(:,3),att4(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att4(:,3),att4(:,4),predclass4);
if flag==1 
line(testdata(diff4,3),testdata(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

%%CONFUSION MATRIX:
conf4=confusionmat(testclass,predclass4);
display(conf4);
%VISUAL TREE
view(dt4);
%CLASSIFICATION TREE
view(dt4,'mode','graph');

%CLASSIFICATION BASED ON ATTRIBUTE 2 & 4
att5=testdata;
dt5=fitctree(traindata(:,[2 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass5=predict(dt5,testdata(:,[2 4]));
toc
%calculate the misclassified indices
n=1;
flag=0;
for i=1:length(predclass5)
if strcmp(predclass5(i),testclass(i)) == 0
    diff5(n,1)=i;
    n=n+1;
    flag=1;
end
end
%calculate the loss
dtloss=(size(diff5)./size(testclass)).*100;
str15='The loss percentage is: ';
str05=num2str(dtloss(1,1));
str25=' %';
str35=strcat(str05,str25);
loss=strcat(str15,str35);
display(loss);
%GRAPH WRT attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 2 & 4');
subplot(6,2,1);
gscatter(att5(:,1),att5(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att5(:,1),att5(:,2),predclass5);
if flag==1 
line(testdata(diff5,1),testdata(diff5,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%GRAPH WRT attribute 1,3
subplot(6,2,3);
gscatter(att5(:,1),att5(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att5(:,1),att5(:,3),predclass5);
if flag==1 
line(testdata(diff5,1),testdata(diff5,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
%GRAPH WRT attribute 1,4
subplot(6,2,5);
gscatter(att5(:,1),att5(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att5(:,1),att5(:,4),predclass5);
if flag==1 
line(testdata(diff5,1),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

%GRAPH WRT attribute 2,3
subplot(6,2,7);
gscatter(att5(:,2),att5(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att5(:,2),att5(:,3),predclass5);
if flag==1 
line(testdata(diff5,2),testdata(diff5,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%GRAPH WRT attribute 2,4
subplot(6,2,9);
gscatter(att5(:,2),att5(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att5(:,2),att5(:,4),predclass5);
if flag==1 
line(testdata(diff5,2),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 3,4
subplot(6,2,11);
gscatter(att5(:,3),att5(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att5(:,3),att5(:,4),predclass5);
if flag==1 
line(testdata(diff5,3),testdata(diff5,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
% CONFUSION MATRIX:
%
conf5=confusionmat(testclass,predclass5);
display(conf5);
%VISUAL TREE
view(dt5);
%CLASSIFICATION TREE
view(dt5,'mode','graph');

%CLASSIFICATION BASED ON ATTRIBUTE 3 & 4
att6=testdata;
dt6=fitctree(traindata(:,[3 4]),trainclass,'ClassNames',{'setosa','versicolor','virginica'});
tic
predclass6=predict(dt6,testdata(:,[3 4]));
toc
%calculating miscalssified points
n=1;
flag=0;
for i=1:length(predclass6)
if strcmp(predclass6(i),testclass(i)) == 0
    diff6(n,1)=i;
    n=n+1;
    flag=1;
end
end
% calculating loss
dtloss=(size(diff6)./size(testclass)).*100;
str16='The loss percentage is: ';
str06=num2str(dtloss(1,1));
str26=' %';
str36=strcat(str06,str26);
loss=strcat(str16,str36);
display(loss);
%GRAPH WRT attribute 1,2
figure('Name','DECISION TREE CLASSIFICATION BASED ON ATTRIBUTE 3 & 4');
subplot(6,2,1);
gscatter(att6(:,1),att6(:,2),testclass);
title('SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
subplot(6,2,2);
gscatter(att6(:,1),att6(:,2),predclass6);
if flag==1 
line(testdata(diff6,1),testdata(diff6,2),'marker','o','markersize',10,'linestyle','none');
end
title('SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('SEPAL WIDTH (cm)');
%GRAPH WRT attribute 1,3
subplot(6,2,3);
gscatter(att6(:,1),att6(:,3),testclass);
title(' PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
subplot(6,2,4);
gscatter(att6(:,1),att6(:,3),predclass6);
if flag==1 
line(testdata(diff6,1),testdata(diff6,3),'marker','o','markersize',10,'linestyle','none');
end
title(' PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL LENGT (cm)');
%GRAPH WRT attribute 1,4
subplot(6,2,5);
gscatter(att6(:,1),att6(:,4),testclass);
title('PETAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,6);
gscatter(att6(:,1),att6(:,4),predclass6);
if flag==1 
line(testdata(diff6,1),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 2,3
subplot(6,2,7);
gscatter(att6(:,2),att6(:,3),testclass);
title('PETAL LENGTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
subplot(6,2,8);
gscatter(att6(:,2),att6(:,3),predclass6);
if flag==1 
line(testdata(diff6,2),testdata(diff6,3),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL LENGTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL LENGTH (cm)');
%GRAPH WRT attribute 2,4
subplot(6,2,9);
gscatter(att6(:,2),att6(:,4),testclass);
title('PETAL WIDTH v/s SEPAL WIDTH-ACTUAL CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,10);
gscatter(att6(:,2),att6(:,4),predclass6);
if flag==1 
line(testdata(diff6,2),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s SEPAL WIDTH-PREDICTED CLASSIFICATION');
xlabel('SEPAL WIDTH (cm)');
ylabel('PETAL WIDTH (cm)');
%GRAPH WRT attribute 3,4
subplot(6,2,11);
gscatter(att6(:,3),att6(:,4),testclass);
title('PETAL WIDTH v/s PETAL LENGTH-ACTUAL CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
subplot(6,2,12);
gscatter(att6(:,3),att6(:,4),predclass6);
if flag==1 
line(testdata(diff6,3),testdata(diff6,4),'marker','o','markersize',10,'linestyle','none');
end
title('PETAL WIDTH v/s PETAL LENGTH-PREDICTED CLASSIFICATION');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');

%CONFUSION MATRIX:
conf6=confusionmat(testclass,predclass6);
display(conf6);
%VISUAL TREE
view(dt6);
%CLASSIFICATION TREE
view(dt6,'mode','graph');