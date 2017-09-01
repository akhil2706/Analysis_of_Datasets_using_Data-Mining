datafile;
%CLASSIFICATION BASED ON ATTRIBUTES 1, 2 & 3
nb1=fitcnb(traindata(:,[1 2 3]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass1=predict(nb1,testdata(:,[1 2 3]));
toc
%calculating the misclassified indices
k=1;
flag=0;
for i=1:length(predclass1)
if strcmp(predclass1(i),testclass(i)) == 0
    diff1(k,1)=i;
    k=k+1;
    flag=1;
end
end
%calculating loss
nbloss=(size(diff1)./size(testclass)).*100;
str11='The loss percentage is: ';
str01=num2str(nbloss(1,1));
str21=' %';
str31=strcat(str01,str21);
loss=strcat(str11,str31);
display(loss);
att1=testdata;
%graph wrt attribute 1 2 3
figure('Name','CLASSIFICATION BASED ON ATTRIBUTES 1, 2 & 3');
subplot(4,2,1)
grid on;
gscatter3(att1(:,1),att1(:,2),att1(:,3),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,2);
grid on;
gscatter3(att1(:,1),att1(:,2),att1(:,3),testclass);
if flag==1
line(att1(diff1,1),att1(diff1,2),att1(diff1,3),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(4,2,3);
grid on;
gscatter3(att1(:,2),att1(:,3),att1(:,4),testclass);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,4);
grid on;
gscatter3(testdata(:,2),testdata(:,3),testdata(:,4),testclass);
if flag==1
line(testdata(diff1,2),testdata(diff1,3),testdata(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';


%graph wrt att 1 3 and 4
subplot(4,2,5);
grid on;
gscatter3(att1(:,1),att1(:,3),att1(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,6);
grid on;
gscatter3(att1(:,1),att1(:,3),att1(:,4),testclass);
if flag==1
line(att1(diff1,1),att1(diff1,3),att1(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph wrt att 1 2 and 4
subplot(4,2,7);
grid on;
gscatter3(att1(:,1),att1(:,2),att1(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,8);
grid on;
gscatter3(att1(:,1),att1(:,2),att1(:,4),testclass);
flag==1
line(att1(diff1,1),att1(diff1,2),att1(diff1,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

% CONFUSION MATRIX:
conf1=confusionmat(testclass,predclass1);
display(conf1);

% CLASSIFICATION BASED ON ATTRIBUTES 2, 3 & 4
att2=testdata;
nb2=fitcnb(traindata(:,[2 3 4]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass2=predict(nb2,testdata(:,[2 3 4]));
toc
%calculating indices of misclassified points
j=1;
flag=0;
for i=1:length(predclass2)
if strcmp(predclass2(i),testclass(i)) == 0
    diff2(j,1)=i;
    j=j+1;
flag=1;
end
end
%calculating loss
nbloss=(size(diff2)./size(testclass)).*100;
str12='The loss percentage is: ';
str02=num2str(nbloss(1,1));
str22=' %';
str32=strcat(str02,str22);
loss=strcat(str12,str32);
display(loss);
%display(diff2);
%graph wrt attribute 1 2 3
figure('Name','CLASSIFICATION BASED ON ATTRIBUTES 2, 3 & 4');
subplot(4,2,1);
grid on;
gscatter3(att2(:,1),att2(:,2),att2(:,3),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,2);
grid on;
gscatter3(att2(:,1),att2(:,2),att2(:,3),predclass2);
if flag==1
line(att2(diff2,1),att2(diff2,2),att2(diff2,3),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';


%GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(4,2,3);
grid on;
gscatter3(att2(:,2),att2(:,3),att2(:,4),testclass);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,4);
grid on;
gscatter3(att2(:,2),att2(:,3),att2(:,4),predclass2);
if flag==1
line(att2(diff2,2),att2(diff2,3),att2(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';


%graph wrt att 1 3 and 4
subplot(4,2,5);
grid on;
gscatter3(att2(:,1),att2(:,3),att2(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,6);
grid on;
gscatter3(att2(:,1),att2(:,3),att2(:,4),predclass2);
if flag==1
line(att2(diff2,1),att2(diff2,3),att2(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';


%graph wrt att 1 2 and 4
subplot(4,2,7);
grid on;
gscatter3(att2(:,1),att2(:,2),att2(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,8);
grid on;
gscatter3(att2(:,1),att2(:,2),att2(:,4),predclass2);
if flag==1
line(att2(diff2,1),att2(diff2,2),att2(diff2,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

% CONFUSION MATRIX:
conf2=confusionmat(testclass,predclass2);
display(conf2);

%CLASSIFICATION BASED ON ATTRIBUTES 1, 2 & 4
att3=testdata;
nb3=fitcnb(traindata(:,[1 2 4]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass3=predict(nb3,att3(:,[1 2 4]));
toc
%calculating misclassified indices
f=1;
flag=0;
for i=1:length(predclass3)
if strcmp(predclass3(i),testclass(i)) == 0
    diff3(f,1)=i;
    f=f+1;
flag=1;
end
end
%calculating loss
nbloss=(size(diff3)./size(testclass)).*100;
str13='The loss percentage is: ';
str03=num2str(nbloss(1,1));
str23=' %';
str33=strcat(str03,str23);
loss=strcat(str13,str33);
display(loss);
%display(diff3);
%graph wrt attribute 1 2 3
figure('Name','CLASSIFICATION BASED ON ATTRIBUTES 1, 2 & 4');
subplot(4,2,1)
grid on;
gscatter3(att3(:,1),att3(:,2),att3(:,3),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,2);
grid on;
gscatter3(att3(:,1),att3(:,2),att3(:,3),predclass3);
if flag==1
line(att3(diff3,1),att3(diff3,2),att3(diff3,3),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';



% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(4,2,3);
grid on;
gscatter3(att3(:,2),att3(:,3),att3(:,4),testclass);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,4);
grid on;
gscatter3(att3(:,2),att3(:,3),att3(:,4),predclass3);
if flag==1
line(att3(diff3,2),att3(diff3,3),att3(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph wrt att 1 3 and 4
subplot(4,2,5);
grid on;
gscatter3(att3(:,1),att3(:,3),att3(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH - ACTUAL CLASSIFICATION';

subplot(4,2,6);
grid on;
gscatter3(att3(:,1),att3(:,3),att3(:,4),predclass3);
if flag==1
line(att3(diff3,1),att3(diff3,3),att3(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph wrt att 1 2 and 4
subplot(4,2,7);
grid on;
gscatter3(att3(:,1),att3(:,2),att3(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,8);
gscatter3(att3(:,1),att3(:,2),att3(:,4),predclass3);
if flag==1
line(att3(diff3,1),att3(diff3,2),att3(diff3,4),'marker','o','markersize',10,'linestyle','none');
end
grid on;
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

% CONFUSION MATRIX:
conf3=confusionmat(testclass,predclass3);
display(conf3);

%CLASSIFICATION BASED ON ATTRIBUTES 1, 3 & 4
att4=testdata;
nb4=fitcnb(traindata(:,[1 3 4]),trainclass,'classNames',{'setosa','versicolor','virginica'});
tic
predclass4=predict(nb4,att4(:,[1 3 4]));
toc
%calculating misclassified indices
f=1;
flag=0;
for i=1:length(predclass4)
if strcmp(predclass4(i),testclass(i)) == 0
    diff4(f,1)=i;
    f=f+1;
flag=1;
end
end
%calculating loss
nbloss=(size(diff4)./size(testclass)).*100;
str14='The loss percentage is: ';
str04=num2str(nbloss(1,1));
str24=' %';
str34=strcat(str04,str24);
loss=strcat(str14,str34);
display(loss);
%display(diff4);
%graph wrt attribute 1 2 3
figure('Name','CLASSIFICATION BASED ON ATTRIBUTES 1, 3 & 4');
subplot(4,2,1);
grid on;
gscatter3(att4(:,1),att4(:,2),att4(:,3),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,2);
grid on;
gscatter3(att4(:,1),att4(:,2),att4(:,3),predclass4);
if flag==1
line(att4(diff4,1),att4(diff4,2),att4(diff4,3),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';



% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(4,2,3);
grid on;
gscatter3(att4(:,2),att4(:,3),att4(:,4),testclass);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,4);
grid on;
gscatter3(att4(:,2),att4(:,3),att4(:,4),predclass4);
if flag==1
line(att4(diff4,2),att4(diff4,3),att4(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

%graph wrt att 1 3 and 4
subplot(4,2,5);
grid on;
gscatter3(att4(:,1),att4(:,3),att4(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,6);
grid on;
gscatter3(att4(:,1),att4(:,3),att4(:,4),predclass4);
if flag==1
line(att4(diff4,1),att4(diff4,3),att4(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';


%graph wrt att 1 2 and 4
subplot(4,2,7);
grid on;
gscatter3(att4(:,1),att4(:,2),att4(:,4),testclass);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-ACTUAL CLASSIFICATION';

subplot(4,2,8);
grid on;
gscatter3(att4(:,1),att4(:,2),att4(:,4),predclass4);
if flag==1
line(att4(diff4,1),att4(diff4,2),att4(diff4,4),'marker','o','markersize',10,'linestyle','none');
end
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH-PREDICTED CLASSIFICATION';

% CONFUSION MATRIX:
conf4=confusionmat(testclass,predclass4);
display(conf4);

