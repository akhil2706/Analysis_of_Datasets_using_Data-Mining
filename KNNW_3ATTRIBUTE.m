load fisheriris;
att=meas;
class=species;
attobj=KDTreeSearcher(att(:,[1 2 3]));
sample=[6.14 3.1 4.2 1.5;4.3 3.1 1.9 0.4;6.7 3.6 6.3 2.2];
%7.3 3.9 4.4 2.7-if more sample values needed
%KNN WRT ATTS 1,2 AND 3
res1_123=knnsearch(attobj,sample(:,[1 2 3]),'k',5,'distance','euclidean');
res2_123=knnsearch(attobj,sample(:,[1 2 3]),'k',5,'distance','cityblock');
res3_123=knnsearch(attobj,sample(:,[1 2 3]),'k',5,'distance','chebychev');
res4_123=knnsearch(attobj,sample(:,[1 2 3]),'k',5,'distance','minkowski');
figure('Name','KNN CLASSIFICATOIN DEPENDENT ON SEPAL LENGTH, SEPAL WIDTH AND PETAL LENGTH');
subplot(2,2,1)
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),class);
plot3(sample(:,1),sample(:,2),sample(:,3),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_123,1),att(res1_123,2),att(res1_123,3),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_123,1),att(res2_123,2),att(res2_123,3),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_123,1),att(res3_123,2),att(res3_123,3),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_123,1),att(res4_123,2),att(res4_123,3),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),class);
plot3(sample(:,2),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_123,2),att(res1_123,3),att(res1_123,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_123,2),att(res2_123,3),att(res2_123,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_123,2),att(res3_123,3),att(res3_123,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_123,2),att(res4_123,3),att(res4_123,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 3 and 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),class);
plot3(sample(:,1),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_123,1),att(res1_123,3),att(res1_123,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_123,1),att(res2_123,3),att(res2_123,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_123,1),att(res3_123,3),att(res3_123,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_123,1),att(res4_123,3),att(res4_123,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 2 and 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),class);
plot3(sample(:,1),sample(:,2),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_123,1),att(res1_123,2),att(res1_123,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_123,1),att(res2_123,2),att(res2_123,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_123,1),att(res3_123,2),att(res3_123,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_123,1),att(res4_123,2),att(res4_123,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');


%KNN WRT ATT 2,3,4
res1_234=knnsearch(attobj,sample(:,[2 3 4]),'k',5,'distance','euclidean');
res2_234=knnsearch(attobj,sample(:,[2 3 4]),'k',5,'distance','cityblock');
res3_234=knnsearch(attobj,sample(:,[2 3 4]),'k',5,'distance','chebychev');
res4_234=knnsearch(attobj,sample(:,[2 3 4]),'k',5,'distance','minkowski');
figure('Name','KNN CLASSIFICATOIN DEPENDENT ON SEPAL WIDTH, PETAL LENGTH AND PETAL WIDTH');
subplot(2,2,1)
grid on;
%graph wrt 1 2 3
gscatter3(att(:,1),att(:,2),att(:,3),class);
plot3(sample(:,1),sample(:,2),sample(:,3),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_234,1),att(res1_234,2),att(res1_234,3),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_234,1),att(res2_234,2),att(res2_234,3),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_234,1),att(res3_234,2),att(res3_234,3),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_234,1),att(res4_234,2),att(res4_234,3),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),class);
plot3(sample(:,2),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_234,2),att(res1_234,3),att(res1_234,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_234,2),att(res2_234,3),att(res2_234,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_234,2),att(res3_234,3),att(res3_234,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_234,2),att(res4_234,3),att(res4_234,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 3 and 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),class);
plot3(sample(:,1),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_234,1),att(res1_234,3),att(res1_234,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_234,1),att(res2_234,3),att(res2_234,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_234,1),att(res3_234,3),att(res3_234,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_234,1),att(res4_234,3),att(res4_234,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 2 and 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),class);
plot3(sample(:,1),sample(:,2),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_234,1),att(res1_234,2),att(res1_234,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_234,1),att(res2_234,2),att(res2_234,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_234,1),att(res3_234,2),att(res3_234,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_234,1),att(res4_234,2),att(res4_234,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');


%KNN WRT 124
res1_124=knnsearch(attobj,sample(:,[1 2 4]),'k',5,'distance','euclidean');
res2_124=knnsearch(attobj,sample(:,[1 2 4]),'k',5,'distance','cityblock');
res3_124=knnsearch(attobj,sample(:,[1 2 4]),'k',5,'distance','chebychev');
res4_124=knnsearch(attobj,sample(:,[1 2 4]),'k',5,'distance','minkowski');
%graph wrt 1 2 3
figure('Name','KNN CLASSIFICATOIN DEPENDENT ON SEPAL LENGTH, SEPAL WIDTH AND PETAL WIDTH');
subplot(2,2,1)
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),class);
plot3(sample(:,1),sample(:,2),sample(:,3),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_124,1),att(res1_124,2),att(res1_124,3),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_124,1),att(res2_124,2),att(res2_124,3),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_124,1),att(res3_124,2),att(res3_124,3),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_124,1),att(res4_124,2),att(res4_124,3),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),class);
plot3(sample(:,2),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_124,2),att(res1_124,3),att(res1_124,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_124,2),att(res2_124,3),att(res2_124,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_124,2),att(res3_124,3),att(res3_124,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_124,2),att(res4_124,3),att(res4_124,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 3 and 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),class);
plot3(sample(:,1),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_124,1),att(res1_124,3),att(res1_124,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_124,1),att(res2_124,3),att(res2_124,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_124,1),att(res3_124,3),att(res3_124,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_124,1),att(res4_124,3),att(res4_124,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 2 and 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),class);
plot3(sample(:,1),sample(:,2),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_124,1),att(res1_124,2),att(res1_124,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_124,1),att(res2_124,2),att(res2_124,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_124,1),att(res3_124,2),att(res3_124,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_124,1),att(res4_124,2),att(res4_124,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH (cm) v/s SEPAL WIDTH (cm) v/s SEPAL LENGTH (cm)';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');


%KNN WRT 1 3 4
res1_134=knnsearch(attobj,sample(:,[1 3 4]),'k',5,'distance','euclidean');
res2_134=knnsearch(attobj,sample(:,[1 3 4]),'k',5,'distance','cityblock');
res3_134=knnsearch(attobj,sample(:,[1 3 4]),'k',5,'distance','chebychev');
res4_134=knnsearch(attobj,sample(:,[1 3 4]),'k',5,'distance','minkowski');
figure('Name','KNN CLASSIFICATOIN DEPENDENT ON SEPAL LENGTH, PETAL LENGTH AND PETAL WIDTH');
%graph wrt 1 2 3
subplot(2,2,1)
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),class);
plot3(sample(:,1),sample(:,2),sample(:,3),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_134,1),att(res1_134,2),att(res1_134,3),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_134,1),att(res2_134,2),att(res2_134,3),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_134,1),att(res3_134,2),att(res3_134,3),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_134,1),att(res4_134,2),att(res4_134,3),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

% GRAPH WRT TO ATTRIBUTE 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),class);
plot3(sample(:,2),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_134,2),att(res1_134,3),att(res1_134,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_134,2),att(res2_134,3),att(res2_134,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_134,2),att(res3_134,3),att(res3_134,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_134,2),att(res4_134,3),att(res4_134,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 3 and 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),class);
plot3(sample(:,1),sample(:,3),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_134,1),att(res1_134,3),att(res1_134,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_134,1),att(res2_134,3),att(res2_134,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_134,1),att(res3_134,3),att(res3_134,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_134,1),att(res4_134,3),att(res4_134,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

%graph wrt att 1 2 and 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),class);
plot3(sample(:,1),sample(:,2),sample(:,4),'marker','x','markersize',10,'linestyle','none','linewidth',4);
plot3(att(res1_134,1),att(res1_134,2),att(res1_134,4),'marker','o','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res2_134,1),att(res2_134,2),att(res2_134,4),'marker','*','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res3_134,1),att(res3_134,2),att(res3_134,4),'marker','p','linestyle','none','linewidth',2,'markersize',10);
plot3(att(res4_134,1),att(res4_134,2),att(res4_134,4),'marker','+','linestyle','none','linewidth',2,'markersize',10);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');


