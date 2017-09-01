%clustering using K-MEANS
load fisheriris;
att=meas;
class=species;
tic
[res,cent]=kmeans(att,3,'Replicates',4);
toc
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y
xlim=min(att(:,1)):0.01:max(att(:,1));
ylim=min(att(:,2)):0.01:max(att(:,2));
[xgrid,ygrid]=meshgrid(xlim,ylim);
plotgrid=[xgrid(:) ygrid(:)];
figure('Name','CLUSTERING ON ENTIRE DATASET');
subplot(3,2,1)
 regions=kmeans(plotgrid,3,'Start',cent(:,[1 2]),'MaxIter',6);
 gscatter(plotgrid(:,1),plotgrid(:,2),regions);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
xlim1=min(att(:,1)):0.01:max(att(:,1));
ylim1=min(att(:,3)):0.01:max(att(:,3));
[xgrid1,ygrid1]=meshgrid(xlim1,ylim1);
plotgrid1=[xgrid1(:) ygrid1(:)];
subplot(3,2,2)
 regions1=kmeans(plotgrid1,3,'MaxIter',6,'start',cent(:,[1 3]));
 gscatter(plotgrid1(:,1),plotgrid1(:,2),regions1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'PETAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
xlim3=min(att(:,1)):0.01:max(att(:,1));
ylim3=min(att(:,4)):0.01:max(att(:,4));
[xgrid3,ygrid3]=meshgrid(xlim3,ylim3);
plotgrid3=[xgrid3(:) ygrid3(:)];
subplot(3,2,3)
 regions3=kmeans(plotgrid3,3,'MaxIter',6,'start',cent(:,[1 2]));
 gscatter(plotgrid3(:,1),plotgrid3(:,2),regions3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
xlim4=min(att(:,2)):0.01:max(att(:,2));
ylim4=min(att(:,3)):0.01:max(att(:,3));
[xgrid4,ygrid4]=meshgrid(xlim4,ylim4);
plotgrid4=[xgrid4(:) ygrid4(:)];
subplot(3,2,4)
 regions4=kmeans(plotgrid4,3,'MaxIter',6,'start',cent(:,[2 3]));
 gscatter(plotgrid4(:,1),plotgrid4(:,2),regions4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH';
ylabel 'PETAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
xlim5=min(att(:,2)):0.01:max(att(:,2));
ylim5=min(att(:,4)):0.01:max(att(:,4));
[xgrid5,ygrid5]=meshgrid(xlim5,ylim5);
plotgrid5=[xgrid5(:) ygrid5(:)];
subplot(3,2,5)
 regions5=kmeans(plotgrid5,3,'MaxIter',6,'start',cent(:,[2 3]));
 gscatter(plotgrid5(:,1),plotgrid5(:,2),regions5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
xlim6=min(att(:,3)):0.01:max(att(:,3));
ylim6=min(att(:,4)):0.01:max(att(:,4));
[xgrid6,ygrid6]=meshgrid(xlim6,ylim6);
plotgrid6=[xgrid6(:) ygrid6(:)];
subplot(3,2,6)
 regions6=kmeans(plotgrid6,3,'MaxIter',6,'start',cent(:,[2 3]));
 gscatter(plotgrid6(:,1),plotgrid6(:,2),regions6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;

%CLUSTERING GRAPH WRT TO  ATT1-X,ATT2-Y AND ATT3-Z
figure('Name','CLUSTERING ON ENTIRE DATASET');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),res);
line(cent(:,1),cent(:,2),cent(:,3),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT2-X,ATT3-Y AND ATT4-Z
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),res);
line(cent(:,2),cent(:,3),cent(:,4),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT1-X,ATT2-Y AND ATT4-Z
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),res);
line(cent(:,1),cent(:,2),cent(:,4),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT1-X,ATT3-Y AND ATT4-Z
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),res);
line(cent(:,1),cent(:,3),cent(:,4),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
figure('Name','CLUSTERING ON ENTIRE DATASET');
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%silhouette curve 
[silcurve,h] = silhouette(att,res);
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';
display(mean(silcurve));
%code for calculating purity
conf=zeros(3,3);
for i=1:length(res)
    if strcmp(species(i),'setosa')==1 
        if res(i)==2
            conf(1,1)=conf(1,1)+1;
        end
        if res(i)==3
            conf(3,1)=conf(3,1)+1;
        end
        if res(i)==1
            conf(2,1)=conf(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res(i)==2
            conf(1,2)=conf(1,2)+1;
        end
        if res(i)==3
            conf(3,2)=conf(3,2)+1;
        end
        if res(i)==1
            conf(2,2)=conf(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res(i)==2
            conf(1,3)=conf(1,3)+1;
        end
        if res(i)==3
            conf(3,3)=conf(3,3)+1;
        end
        if res(i)==1
            conf(2,3)=conf(2,3)+1;
        end
        
    end
end
purity=(max(conf(1,:))+max(conf(2,:))+max(conf(3,:)))./150

