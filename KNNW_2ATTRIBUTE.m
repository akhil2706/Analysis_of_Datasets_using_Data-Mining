%CLASSIFICATION OF 3 POINTS BY KNN CLASSIFIER USING ALL DISTSNCE PARAMETERS TOGETHER:
load fisheriris;
att=meas;
class=species;
attobj1=KDTreeSearcher(att(:,[1 2]));
attobj2=KDTreeSearcher(att(:,[1 3]));
attobj3=KDTreeSearcher(att(:,[1 4]));
attobj4=KDTreeSearcher(att(:,[2 3]));
attobj5=KDTreeSearcher(att(:,[2 4]));
attobj6=KDTreeSearcher(att(:,[3 4]));

sample=[6.14 3.1 4.2 1.5;4.3 3.1 1.9 0.4;6.7 3.6 6.3 2.2];
%unused sample-[5.6 3.2 1.4 0.4;6.14 3.5 5.2 1.5;7.3 3.9 4.9 1.8;4.8 2.9 6.9 2.2;6.7 3.6 5.7 1.25];
res1_000=knnsearch(attobj1,sample(:,[1 2]),'k',5,'distance','euclidean');
res2_000=knnsearch(attobj1,sample(:,[1 2]),'k',5,'distance','cityblock');
res3_000=knnsearch(attobj1,sample(:,[1 2]),'k',5,'distance','chebychev');
res4_000=knnsearch(attobj1,sample(:,[1 2]),'k',5,'distance','minkowski');

figure('Name','KNN CLASSIFICATON DEPENDENT ON SEPAL WIDTH AND SEPAL LENGTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,1),att(res1_000,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,1),att(res2_000,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,1),att(res3_000,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,1),att(res4_000,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,1),att(res1_000,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,1),att(res2_000,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,1),att(res3_000,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,1),att(res4_000,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,1),att(res1_000,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,1),att(res2_000,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,1),att(res3_000,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,1),att(res4_000,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,2),att(res1_000,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,2),att(res2_000,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,2),att(res3_000,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,2),att(res4_000,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,2),att(res1_000,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,2),att(res2_000,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,2),att(res3_000,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,2),att(res4_000,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_000,3),att(res1_000,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_000,3),att(res2_000,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_000,3),att(res3_000,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_000,3),att(res4_000,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

res1_001=knnsearch(attobj2,sample(:,[1 3]),'k',5,'distance','euclidean');
res2_001=knnsearch(attobj2,sample(:,[1 3]),'k',5,'distance','cityblock');
res3_001=knnsearch(attobj2,sample(:,[1 3]),'k',5,'distance','chebychev');
res4_001=knnsearch(attobj2,sample(:,[1 3]),'k',5,'distance','minkowski');

figure('Name','KNN CLASSIFICATON DEPENDENT ON PETAL LENGTH AND SEPAL LENGTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,1),att(res1_001,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,1),att(res2_001,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,1),att(res3_001,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,1),att(res4_001,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title('PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,1),att(res1_001,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,1),att(res2_001,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,1),att(res3_001,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,1),att(res4_001,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,1),att(res1_001,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,1),att(res2_001,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,1),att(res3_001,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,1),att(res4_001,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,2),att(res1_001,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,2),att(res2_001,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,2),att(res3_001,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,2),att(res4_001,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,2),att(res1_001,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,2),att(res2_001,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,2),att(res3_001,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,2),att(res4_001,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_001,3),att(res1_001,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_001,3),att(res2_001,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_001,3),att(res3_001,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_001,3),att(res4_001,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');



res1_010=knnsearch(attobj3,sample(:,[1 4]),'k',5,'distance','euclidean');
res2_010=knnsearch(attobj3,sample(:,[1 4]),'k',5,'distance','cityblock');
res3_010=knnsearch(attobj3,sample(:,[1 4]),'k',5,'distance','chebychev');
res4_010=knnsearch(attobj3,sample(:,[1 4]),'k',5,'distance','minkowski');

figure('Name','KNN CLASSIFICATON DEPENDENT ON PETAL WIDTH AND SEPAL LENGTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,1),att(res1_010,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,1),att(res2_010,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,1),att(res3_010,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,1),att(res4_010,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,1),att(res1_010,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,1),att(res2_010,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,1),att(res3_010,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,1),att(res4_010,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,1),att(res1_010,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,1),att(res2_010,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,1),att(res3_010,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,1),att(res4_010,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,2),att(res1_010,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,2),att(res2_010,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,2),att(res3_010,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,2),att(res4_010,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,2),att(res1_010,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,2),att(res2_010,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,2),att(res3_010,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,2),att(res4_010,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_010,3),att(res1_010,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_010,3),att(res2_010,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_010,3),att(res3_010,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_010,3),att(res4_010,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');



res1_011=knnsearch(attobj4,sample(:,[2 3]),'k',5,'distance','euclidean');
res2_011=knnsearch(attobj4,sample(:,[2 3]),'k',5,'distance','cityblock');
res3_011=knnsearch(attobj4,sample(:,[2 3]),'k',5,'distance','chebychev');
res4_011=knnsearch(attobj4,sample(:,[2 3]),'k',5,'distance','minkowski');

figure('Name','KNN CLASSIFICATON DEPENDENT ON PETAL LENGTH AND SEPAL WIDTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,1),att(res1_011,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,1),att(res2_011,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,1),att(res3_011,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,1),att(res4_011,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,1),att(res1_011,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,1),att(res2_011,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,1),att(res3_011,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,1),att(res4_011,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,1),att(res1_011,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,1),att(res2_011,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,1),att(res3_011,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,1),att(res4_011,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,2),att(res1_011,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,2),att(res2_011,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,2),att(res3_011,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,2),att(res4_011,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,2),att(res1_011,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,2),att(res2_011,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,2),att(res3_011,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,2),att(res4_011,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_011,3),att(res1_011,4),'color','k','marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_011,3),att(res2_011,4),'color','y','marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_011,3),att(res3_011,4),'color','c','marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_011,3),att(res4_011,4),'color','m','marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');




res1_100=knnsearch(attobj5,sample(:,[2 4]),'k',5,'distance','euclidean');
res2_100=knnsearch(attobj5,sample(:,[2 4]),'k',5,'distance','cityblock');
res3_100=knnsearch(attobj5,sample(:,[2 4]),'k',5,'distance','chebychev');
res4_100=knnsearch(attobj5,sample(:,[2 4]),'k',5,'distance','minkowski');

figure('Name','KNN CLASSIFICATON DEPENDENT ON PETAL WIDTH AND SEPAL WIDTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_100,1),att(res1_100,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,1),att(res2_100,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,1),att(res3_100,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,1),att(res4_100,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none');
line(att(res1_100,1),att(res1_100,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,1),att(res2_100,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,1),att(res3_100,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,1),att(res4_100,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_100,1),att(res1_100,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,1),att(res2_100,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,1),att(res3_100,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,1),att(res4_100,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_100,2),att(res1_100,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,2),att(res2_100,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,2),att(res3_100,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,2),att(res4_100,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_100,2),att(res1_100,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,2),att(res2_100,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,2),att(res3_100,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,2),att(res4_100,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_100,3),att(res1_100,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_100,3),att(res2_100,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_100,3),att(res3_100,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_100,3),att(res4_100,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

res1_101=knnsearch(attobj6,sample(:,[3 4]),'k',5,'distance','euclidean');
res2_101=knnsearch(attobj6,sample(:,[3 4]),'k',5,'distance','cityblock');
res3_101=knnsearch(attobj6,sample(:,[3 4]),'k',5,'distance','chebychev');
res4_101=knnsearch(attobj6,sample(:,[3 4]),'k',5,'distance','minkowski');
figure('Name','KNN CLASSIFICATON DEPENDENT ON PETAL WIDTH AND PETAL LENGTH');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,1),att(res1_101,2),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,1),att(res2_101,2),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_101,1),att(res3_101,2),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,1),att(res4_101,2),'marker','*','color','m','markersize',10,'linestyle','none');
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,1),att(res1_101,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,1),att(res2_101,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_101,1),att(res3_101,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,1),att(res4_101,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,1),att(res1_101,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,1),att(res2_101,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_101,1),att(res3_101,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,1),att(res4_101,4),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,2),att(res1_101,3),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,2),att(res2_101,3),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_101,2),att(res3_101,3),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,2),att(res4_101,3),'marker','*','color','m','markersize',10,'linestyle','none');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,2),att(res1_101,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,2),att(res2_101,4),'marker','^','color','y','markersize',10,'linestyle','none');
line(att(res3_101,2),att(res3_101,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,2),att(res4_101,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1_101,3),att(res1_101,4),'marker','o','color','k','linestyle','none','markersize',10);
line(att(res2_101,3),att(res2_101,4),'marker','^','color','y','color','k','markersize',10,'linestyle','none');
line(att(res3_101,3),att(res3_101,4),'marker','p','color','c','markersize',10,'linestyle','none');
line(att(res4_101,3),att(res4_101,4),'marker','*','color','m','markersize',10,'linestyle','none');
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
legend('SETOSA','VERSICOLOR','VIRGINICA','SAMPLE','EUCLIDEAN','CITYBLOCK','CHEBYCHEV','MINKOWSKI','LOCATION','BEST');

% 
% %res5=knnsearch(attobj,sample,'k',10,'distance','mahalanobis');
% %res6=knnsearch(attobj,sample,'k',10,'distance','cosine');
% %res7=knnsearch(attobj,sample,'k',10,'distance','correlation');
% %res8=knnsearch(attobj,sample,'k',10,'distance','spearman');
% %res9=knnsearch(attobj,sample,'k',10,'distance','hamming');
% %res10=knnsearch(attobj,sample,'k',10,'distance','jaccard');
