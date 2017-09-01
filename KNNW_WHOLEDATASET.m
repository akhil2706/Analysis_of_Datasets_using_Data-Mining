%CLASSIFICATION OF 3 POINTS BY KNN CLASSIFIER USING ALL DISTSNCE PARAMETERS TOGETHER:
load fisheriris;
att=meas;
class=species;
attobj=KDTreeSearcher(att);
sample=[6.14 3.1 4.2 1.5;4.3 3.1 1.9 0.4;6.7 3.6 6.3 2.2];
%unused sample point-7.3 3.9 4.9 1.8
%unused sample point-5.6 3.2 1.4 0.4
res1=knnsearch(attobj,sample,'k',3,'distance','euclidean');
res2=knnsearch(attobj,sample,'k',3,'distance','cityblock');
res3=knnsearch(attobj,sample,'k',3,'distance','chebychev');
res4=knnsearch(attobj,sample,'k',3,'distance','minkowski');

%res5=knnsearch(attobj,sample,'k',10,'distance','mahalanobis');
%res6=knnsearch(attobj,sample,'k',10,'distance','cosine');
%res7=knnsearch(attobj,sample,'k',10,'distance','correlation');
%res8=knnsearch(attobj,sample,'k',10,'distance','spearman');
%res9=knnsearch(attobj,sample,'k',10,'distance','hamming');
%res10=knnsearch(attobj,sample,'k',10,'distance','jaccard');

figure
subplot(3,2,1)
gscatter(att(:,1),att(:,2),class);
line(sample(:,1),sample(:,2),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,1),att(res1,2),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,1),att(res2,2),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,1),att(res3,2),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,1),att(res4,2),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
title('SEPAL WIDTH v/s SEPAL LENGTH');
xlabel('SEPAL LENGTH (cm)')
ylabel('SEPAL WIDTH (cm)')

subplot(3,2,2)
gscatter(att(:,1),att(:,3),class);
title(' PETAL LENGTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,1),att(res1,3),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,1),att(res2,3),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,1),att(res3,3),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,1),att(res4,3),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL LENGT (cm)')

subplot(3,2,3)
gscatter(att(:,1),att(:,4),class);
title('PETAL WIDTH v/s SEPAL LENGTH');
line(sample(:,1),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,1),att(res1,4),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,1),att(res2,4),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,1),att(res3,4),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,1),att(res4,4),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
xlabel('SEPAL LENGTH (cm)')
ylabel('PETAL WIDTH (cm)')

subplot(3,2,4)
gscatter(att(:,2),att(:,3),class);
title('PETAL LENGTH v/s SEPAL WIDTH');
line(sample(:,2),sample(:,3),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,2),att(res1,3),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,2),att(res2,3),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,2),att(res3,3),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,2),att(res4,3),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL LENGTH (cm)')

subplot(3,2,5)
gscatter(att(:,2),att(:,4),class);
line(sample(:,2),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,2),att(res1,4),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,2),att(res2,4),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,2),att(res3,4),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,2),att(res4,4),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
title('PETAL WIDTH v/s SEPAL WIDTH');
xlabel('SEPAL WIDTH (cm)')
ylabel('PETAL WIDTH (cm)')

subplot(3,2,6)
gscatter(att(:,3),att(:,4),class);
line(sample(:,3),sample(:,4),'marker','x','color','k','markersize',10,'linestyle','none','linewidth',4);
line(att(res1,3),att(res1,4),'marker','o','linestyle','none','color','k','markersize',10,'linewidth',3);
line(att(res2,3),att(res2,4),'marker','^','markersize',10,'color','m','linestyle','none','linewidth',3);
line(att(res3,3),att(res3,4),'marker','p','markersize',10,'color','c','linestyle','none','linewidth',3);
line(att(res4,3),att(res4,4),'marker','*','markersize',10,'color','y','linestyle','none','linewidth',2);
title('PETAL WIDTH v/s PETAL LENGTH');
xlabel('PETAL LENGTH (cm)');
ylabel('PETAL WIDTH (cm)');
