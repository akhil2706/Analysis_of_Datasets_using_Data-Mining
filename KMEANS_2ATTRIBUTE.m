%clustering using K-MEANS
load fisheriris;
att=meas;
class=species;
%CLUSTERING BASED ON ATTRIBUTE 1 AND 2
tic
[res_12,cent_12]=kmeans(att(:,[1 2]),3,'Replicates',4);
toc
%PURITY
conf1=zeros(3,3);
for i=1:length(res_12)
    if strcmp(species(i),'setosa')==1 
        if res_12(i)==2
            conf1(1,1)=conf1(1,1)+1;
        end
        if res_12(i)==3
            conf1(3,1)=conf1(3,1)+1;
        end
        if res_12(i)==1
            conf1(2,1)=conf1(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_12(i)==2
            conf1(1,2)=conf1(1,2)+1;
        end
        if res_12(i)==3
            conf1(3,2)=conf1(3,2)+1;
        end
        if res_12(i)==1
            conf1(2,2)=conf1(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_12(i)==2
            conf1(1,3)=conf1(1,3)+1;
        end
        if res_12(i)==3
            conf1(3,3)=conf1(3,3)+1;
        end
        if res_12(i)==1
            conf1(2,3)=conf1(2,3)+1;
        end
        
    end
end
purity=(max(conf1(1,:))+max(conf1(2,:))+max(conf1(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y
xlim_12=min(att(:,1)):0.01:max(att(:,1));
ylim_12=min(att(:,2)):0.01:max(att(:,2));
[xgrid_12,ygrid_12]=meshgrid(xlim_12,ylim_12);
plotgrid_12=[xgrid_12(:) ygrid_12(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 2');
subplot(3,2,1)
 regions_12=kmeans(plotgrid_12,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12(:,1),plotgrid_12(:,2),regions_12);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
line(cent_12(:,1),cent_12(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_12_1=min(att(:,1)):0.01:max(att(:,1));
ylim_12_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_12_1,ygrid_12_1]=meshgrid(xlim_12_1,ylim_12_1);
plotgrid_12_1=[xgrid_12_1(:) ygrid_12_1(:)];
subplot(3,2,2)
 regions_12_1=kmeans(plotgrid_12_1,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12_1(:,1),plotgrid_12_1(:,2),regions_12_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_12_3=min(att(:,1)):0.01:max(att(:,1));
ylim_12_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_12_3,ygrid_12_3]=meshgrid(xlim_12_3,ylim_12_3);
plotgrid_12_3=[xgrid_12_3(:) ygrid_12_3(:)];
subplot(3,2,3)
 regions_12_3=kmeans(plotgrid_12_3,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12_3(:,1),plotgrid_12_3(:,2),regions_12_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_12_4=min(att(:,2)):0.01:max(att(:,2));
ylim_12_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_12_4,ygrid_12_4]=meshgrid(xlim_12_4,ylim_12_4);
plotgrid_12_4=[xgrid_12_4(:) ygrid_12_4(:)];
subplot(3,2,4)
 regions_12_4=kmeans(plotgrid_12_4,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12_4(:,1),plotgrid_12_4(:,2),regions_12_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_12_5=min(att(:,2)):0.01:max(att(:,2));
ylim_12_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_12_5,ygrid_12_5]=meshgrid(xlim_12_5,ylim_12_5);
plotgrid_12_5=[xgrid_12_5(:) ygrid_12_5(:)];
subplot(3,2,5)
 regions_12_5=kmeans(plotgrid_12_5,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12_5(:,1),plotgrid_12_5(:,2),regions_12_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_12_6=min(att(:,3)):0.01:max(att(:,3));
ylim_12_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_12_6,ygrid_12_6]=meshgrid(xlim_12_6,ylim_12_6);
plotgrid_12_6=[xgrid_12_6(:) ygrid_12_6(:)];
subplot(3,2,6)
 regions_12_6=kmeans(plotgrid_12_6,3,'MaxIter',6,'start',cent_12(:,[1 2]));
 gscatter(plotgrid_12_6(:,1),plotgrid_12_6(:,2),regions_12_6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 2');
[silcurve,h] = silhouette(att(:,[1 2]),res_12);
mean(silcurve)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';



%CLUSTERING BASED ON ATTRIBUTE 1 AND 3
tic
[res_13,cent_13]=kmeans(att(:,[1 3]),3,'Replicates',4);
toc
%purity
conf2=zeros(3,3);
for i=1:length(res_13)
    if strcmp(species(i),'setosa')==1 
        if res_13(i)==2
            conf2(1,1)=conf2(1,1)+1;
        end
        if res_13(i)==3
            conf2(3,1)=conf2(3,1)+1;
        end
        if res_13(i)==1
            conf2(2,1)=conf2(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_13(i)==2
            conf2(1,2)=conf2(1,2)+1;
        end
        if res_13(i)==3
            conf2(3,2)=conf2(3,2)+1;
        end
        if res_13(i)==1
            conf2(2,2)=conf2(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_13(i)==2
            conf2(1,3)=conf2(1,3)+1;
        end
        if res_13(i)==3
            conf2(3,3)=conf2(3,3)+1;
        end
        if res_13(i)==1
            conf2(2,3)=conf2(2,3)+1;
        end
        
    end
end
purity=(max(conf2(1,:))+max(conf2(2,:))+max(conf2(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

xlim_13=min(att(:,1)):0.01:max(att(:,1));
ylim_13=min(att(:,2)):0.01:max(att(:,2));
[xgrid_13,ygrid_13]=meshgrid(xlim_13,ylim_13);
plotgrid_13=[xgrid_13(:) ygrid_13(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 3');
subplot(3,2,1)
 regions_13=kmeans(plotgrid_13,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13(:,1),plotgrid_13(:,2),regions_13);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_13_1=min(att(:,1)):0.01:max(att(:,1));
ylim_13_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_13_1,ygrid_13_1]=meshgrid(xlim_13_1,ylim_13_1);
plotgrid_13_1=[xgrid_13_1(:) ygrid_13_1(:)];
subplot(3,2,2)
 regions_13_1=kmeans(plotgrid_13_1,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13_1(:,1),plotgrid_13_1(:,2),regions_13_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
line(cent_13(:,1),cent_13(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_13_3=min(att(:,1)):0.01:max(att(:,1));
ylim_13_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_13_3,ygrid_13_3]=meshgrid(xlim_13_3,ylim_13_3);
plotgrid_13_3=[xgrid_13_3(:) ygrid_13_3(:)];
subplot(3,2,3)
 regions_13_3=kmeans(plotgrid_13_3,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13_3(:,1),plotgrid_13_3(:,2),regions_13_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_13_4=min(att(:,2)):0.01:max(att(:,2));
ylim_13_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_13_4,ygrid_13_4]=meshgrid(xlim_13_4,ylim_13_4);
plotgrid_13_4=[xgrid_13_4(:) ygrid_13_4(:)];
subplot(3,2,4)
 regions_13_4=kmeans(plotgrid_13_4,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13_4(:,1),plotgrid_13_4(:,2),regions_13_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_13_5=min(att(:,2)):0.01:max(att(:,2));
ylim_13_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_13_5,ygrid_13_5]=meshgrid(xlim_13_5,ylim_13_5);
plotgrid_13_5=[xgrid_13_5(:) ygrid_13_5(:)];
subplot(3,2,5)
 regions_13_5=kmeans(plotgrid_13_5,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13_5(:,1),plotgrid_13_5(:,2),regions_13_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_13_6=min(att(:,3)):0.01:max(att(:,3));
ylim_13_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_13_6,ygrid_13_6]=meshgrid(xlim_13_6,ylim_13_6);
plotgrid_13_6=[xgrid_13_6(:) ygrid_13_6(:)];
subplot(3,2,6)
 regions_13_6=kmeans(plotgrid_13_6,3,'MaxIter',6,'start',cent_13(:,[1 2]));
 gscatter(plotgrid_13_6(:,1),plotgrid_13_6(:,2),regions_13_6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 3');
[silcurve,h] = silhouette(att(:,[1 3]),res_13);
mean(silcurve)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

%CLUSTERING BASED ON ATTRIBUTE 1 AND 4
tic
[res_14,cent_14]=kmeans(att(:,[1 4]),3,'Replicates',4);
toc
%purity
conf3=zeros(3,3);
for i=1:length(res_14)
    if strcmp(species(i),'setosa')==1 
        if res_14(i)==2
            conf3(1,1)=conf3(1,1)+1;
        end
        if res_14(i)==3
            conf3(3,1)=conf3(3,1)+1;
        end
        if res_14(i)==1
            conf3(2,1)=conf3(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_14(i)==2
            conf3(1,2)=conf3(1,2)+1;
        end
        if res_14(i)==3
            conf3(3,2)=conf3(3,2)+1;
        end
        if res_14(i)==1
            conf3(2,2)=conf3(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_14(i)==2
            conf3(1,3)=conf3(1,3)+1;
        end
        if res_14(i)==3
            conf3(3,3)=conf3(3,3)+1;
        end
        if res_14(i)==1
            conf3(2,3)=conf3(2,3)+1;
        end
        
    end
end
purity=(max(conf3(1,:))+max(conf3(2,:))+max(conf3(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

xlim_14=min(att(:,1)):0.01:max(att(:,1));
ylim_14=min(att(:,2)):0.01:max(att(:,2));
[xgrid_14,ygrid_14]=meshgrid(xlim_14,ylim_14);
plotgrid_14=[xgrid_14(:) ygrid_14(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 4');
subplot(3,2,1)
 regions_14=kmeans(plotgrid_14,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14(:,1),plotgrid_14(:,2),regions_14);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_14_1=min(att(:,1)):0.01:max(att(:,1));
ylim_14_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_14_1,ygrid_14_1]=meshgrid(xlim_14_1,ylim_14_1);
plotgrid_14_1=[xgrid_14_1(:) ygrid_14_1(:)];
subplot(3,2,2)
 regions_14_1=kmeans(plotgrid_14_1,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14_1(:,1),plotgrid_14_1(:,2),regions_14_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_14_3=min(att(:,1)):0.01:max(att(:,1));
ylim_14_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_14_3,ygrid_14_3]=meshgrid(xlim_14_3,ylim_14_3);
plotgrid_14_3=[xgrid_14_3(:) ygrid_14_3(:)];
subplot(3,2,3)
 regions_14_3=kmeans(plotgrid_14_3,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14_3(:,1),plotgrid_14_3(:,2),regions_14_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
line(cent_14(:,1),cent_14(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_14_4=min(att(:,2)):0.01:max(att(:,2));
ylim_14_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_14_4,ygrid_14_4]=meshgrid(xlim_14_4,ylim_14_4);
plotgrid_14_4=[xgrid_14_4(:) ygrid_14_4(:)];
subplot(3,2,4)
 regions_14_4=kmeans(plotgrid_14_4,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14_4(:,1),plotgrid_14_4(:,2),regions_14_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_14_5=min(att(:,2)):0.01:max(att(:,2));
ylim_14_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_14_5,ygrid_14_5]=meshgrid(xlim_14_5,ylim_14_5);
plotgrid_14_5=[xgrid_14_5(:) ygrid_14_5(:)];
subplot(3,2,5)
 regions_14_5=kmeans(plotgrid_14_5,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14_5(:,1),plotgrid_14_5(:,2),regions_14_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_14_6=min(att(:,3)):0.01:max(att(:,3));
ylim_14_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_14_6,ygrid_14_6]=meshgrid(xlim_14_6,ylim_14_6);
plotgrid_14_6=[xgrid_14_6(:) ygrid_14_6(:)];
subplot(3,2,6)
 regions_14_6=kmeans(plotgrid_14_6,3,'MaxIter',6,'start',cent_14(:,[1 2]));
 gscatter(plotgrid_14_6(:,1),plotgrid_14_6(:,2),regions_14_6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 4');
[silcurve_14,h] = silhouette(att(:,[1 4]),res_14);
mean(silcurve_14)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

% CLUSTERING BASED ON ATTRIBUTE 2 AND 3
tic
[res_23,cent_23]=kmeans(att(:,[2 3]),3,'Replicates',4);
toc
%purity
conf4=zeros(3,3);
for i=1:length(res_23)
    if strcmp(species(i),'setosa')==1 
        if res_23(i)==2
            conf4(1,1)=conf4(1,1)+1;
        end
        if res_23(i)==3
            conf4(3,1)=conf4(3,1)+1;
        end
        if res_23(i)==1
            conf4(2,1)=conf4(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_23(i)==2
            conf4(1,2)=conf4(1,2)+1;
        end
        if res_23(i)==3
            conf4(3,2)=conf4(3,2)+1;
        end
        if res_23(i)==1
            conf4(2,2)=conf4(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_23(i)==2
            conf4(1,3)=conf4(1,3)+1;
        end
        if res_23(i)==3
            conf4(3,3)=conf4(3,3)+1;
        end
        if res_23(i)==1
            conf4(2,3)=conf4(2,3)+1;
        end
        
    end
end
purity=(max(conf4(1,:))+max(conf4(2,:))+max(conf4(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

xlim_23=min(att(:,1)):0.01:max(att(:,1));
ylim_23=min(att(:,2)):0.01:max(att(:,2));
[xgrid_23,ygrid_23]=meshgrid(xlim_23,ylim_23);
plotgrid_23=[xgrid_23(:) ygrid_23(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 3');
subplot(3,2,1)
 regions_23=kmeans(plotgrid_23,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23(:,1),plotgrid_23(:,2),regions_23);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_23_1=min(att(:,1)):0.01:max(att(:,1));
ylim_23_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_23_1,ygrid_23_1]=meshgrid(xlim_23_1,ylim_23_1);
plotgrid_23_1=[xgrid_23_1(:) ygrid_23_1(:)];
subplot(3,2,2)
 regions_23_1=kmeans(plotgrid_23_1,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23_1(:,1),plotgrid_23_1(:,2),regions_23_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_23_3=min(att(:,1)):0.01:max(att(:,1));
ylim_23_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_23_3,ygrid_23_3]=meshgrid(xlim_23_3,ylim_23_3);
plotgrid_23_3=[xgrid_23_3(:) ygrid_23_3(:)];
subplot(3,2,3)
 regions_23_3=kmeans(plotgrid_23_3,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23_3(:,1),plotgrid_23_3(:,2),regions_23_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_23_4=min(att(:,2)):0.01:max(att(:,2));
ylim_23_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_23_4,ygrid_23_4]=meshgrid(xlim_23_4,ylim_23_4);
plotgrid_23_4=[xgrid_23_4(:) ygrid_23_4(:)];
subplot(3,2,4)
 regions_23_4=kmeans(plotgrid_23_4,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23_4(:,1),plotgrid_23_4(:,2),regions_23_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
line(cent_23(:,1),cent_23(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_23_5=min(att(:,2)):0.01:max(att(:,2));
ylim_23_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_23_5,ygrid_23_5]=meshgrid(xlim_23_5,ylim_23_5);
plotgrid_23_5=[xgrid_23_5(:) ygrid_23_5(:)];
subplot(3,2,5)
 regions_23_5=kmeans(plotgrid_23_5,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23_5(:,1),plotgrid_23_5(:,2),regions_23_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_23_6=min(att(:,3)):0.01:max(att(:,3));
ylim_23_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_23_6,ygrid_23_6]=meshgrid(xlim_23_6,ylim_23_6);
plotgrid_23_6=[xgrid_23_6(:) ygrid_23_6(:)];
subplot(3,2,6)
 regions_23_6=kmeans(plotgrid_23_6,3,'MaxIter',6,'start',cent_23(:,[1 2]));
 gscatter(plotgrid_23_6(:,1),plotgrid_23_6(:,2),regions_23_6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 3');
[silcurve_23,h_23] = silhouette(att(:,[2 3]),res_23);
mean(silcurve_23)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

% CLUSTERING BASED ON ATTRIBUTE 2 AND 4
tic
[res_24,cent_24]=kmeans(att(:,[2 4]),3,'Replicates',4);
toc
%purity
conf5=zeros(3,3);
for i=1:length(res_24)
    if strcmp(species(i),'setosa')==1 
        if res_24(i)==2
            conf5(1,1)=conf5(1,1)+1;
        end
        if res_24(i)==3
            conf5(3,1)=conf5(3,1)+1;
        end
        if res_24(i)==1
            conf5(2,1)=conf5(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_24(i)==2
            conf5(1,2)=conf5(1,2)+1;
        end
        if res_24(i)==3
            conf5(3,2)=conf5(3,2)+1;
        end
        if res_24(i)==1
            conf5(2,2)=conf5(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_24(i)==2
            conf5(1,3)=conf5(1,3)+1;
        end
        if res_24(i)==3
            conf5(3,3)=conf5(3,3)+1;
        end
        if res_24(i)==1
            conf5(2,3)=conf5(2,3)+1;
        end
        
    end
end
purity=(max(conf5(1,:))+max(conf5(2,:))+max(conf5(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

xlim_24=min(att(:,1)):0.01:max(att(:,1));
ylim_24=min(att(:,2)):0.01:max(att(:,2));
[xgrid_24,ygrid_24]=meshgrid(xlim_24,ylim_24);
plotgrid_24=[xgrid_24(:) ygrid_24(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 4');
subplot(3,2,1)
 regions_24=kmeans(plotgrid_24,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24(:,1),plotgrid_24(:,2),regions_24);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_24_1=min(att(:,1)):0.01:max(att(:,1));
ylim_24_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_24_1,ygrid_24_1]=meshgrid(xlim_24_1,ylim_24_1);
plotgrid_24_1=[xgrid_24_1(:) ygrid_24_1(:)];
subplot(3,2,2)
 regions_24_1=kmeans(plotgrid_24_1,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24_1(:,1),plotgrid_24_1(:,2),regions_24_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_24_3=min(att(:,1)):0.01:max(att(:,1));
ylim_24_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_24_3,ygrid_24_3]=meshgrid(xlim_24_3,ylim_24_3);
plotgrid_24_3=[xgrid_24_3(:) ygrid_24_3(:)];
subplot(3,2,3)
 regions_24_3=kmeans(plotgrid_24_3,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24_3(:,1),plotgrid_24_3(:,2),regions_24_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_24_4=min(att(:,2)):0.01:max(att(:,2));
ylim_24_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_24_4,ygrid_24_4]=meshgrid(xlim_24_4,ylim_24_4);
plotgrid_24_4=[xgrid_24_4(:) ygrid_24_4(:)];
subplot(3,2,4)
 regions_24_4=kmeans(plotgrid_24_4,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24_4(:,1),plotgrid_24_4(:,2),regions_24_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_24_5=min(att(:,2)):0.01:max(att(:,2));
ylim_24_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_24_5,ygrid_24_5]=meshgrid(xlim_24_5,ylim_24_5);
plotgrid_24_5=[xgrid_24_5(:) ygrid_24_5(:)];
subplot(3,2,5)
 regions_24_5=kmeans(plotgrid_24_5,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24_5(:,1),plotgrid_24_5(:,2),regions_24_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
line(cent_24(:,1),cent_24(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_24_6=min(att(:,3)):0.01:max(att(:,3));
ylim_24_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_24_6,ygrid_24_6]=meshgrid(xlim_24_6,ylim_24_6);
plotgrid_24_6=[xgrid_24_6(:) ygrid_24_6(:)];
subplot(3,2,6)
 regions_24_6=kmeans(plotgrid_24_6,3,'MaxIter',6,'start',cent_24(:,[1 2]));
 gscatter(plotgrid_24_6(:,1),plotgrid_24_6(:,2),regions_24_6);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 4');
[silcurve_24,h_24] = silhouette(att(:,[2 4]),res_24);
mean(silcurve_24)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';


% CLUSTERING BASED ON ATTRIBUTE 3 AND 4
tic
[res_34,cent_34]=kmeans(att(:,[3 4]),3,'Replicates',4);
toc
%purity
conf6=zeros(3,3);
for i=1:length(res_34)
    if strcmp(species(i),'setosa')==1 
        if res_34(i)==2
            conf6(1,1)=conf6(1,1)+1;
        end
        if res_34(i)==3
            conf6(3,1)=conf6(3,1)+1;
        end
        if res_34(i)==1
            conf6(2,1)=conf6(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_34(i)==2
            conf6(1,2)=conf6(1,2)+1;
        end
        if res_34(i)==3
            conf6(3,2)=conf6(3,2)+1;
        end
        if res_34(i)==1
            conf6(2,2)=conf6(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_34(i)==2
            conf6(1,3)=conf6(1,3)+1;
        end
        if res_34(i)==3
            conf6(3,3)=conf6(3,3)+1;
        end
        if res_34(i)==1
            conf6(2,3)=conf6(2,3)+1;
        end
        
    end
end
purity=(max(conf6(1,:))+max(conf6(2,:))+max(conf6(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

xlim_34=min(att(:,1)):0.01:max(att(:,1));
ylim_34=min(att(:,2)):0.01:max(att(:,2));
[xgrid_34,ygrid_34]=meshgrid(xlim_34,ylim_34);
plotgrid_34=[xgrid_34(:) ygrid_34(:)];
figure('Name','CLUSTERING BASED ON ATTRIBUTE 3 AND 4');
subplot(3,2,1)
 regions_34=kmeans(plotgrid_34,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34(:,1),plotgrid_34(:,2),regions_34);
hold on 
plot(att(:,1),att(:,2),'marker','*','markersize',10,'linestyle','none');
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y

xlim_34_1=min(att(:,1)):0.01:max(att(:,1));
ylim_34_1=min(att(:,3)):0.01:max(att(:,3));
[xgrid_34_1,ygrid_34_1]=meshgrid(xlim_34_1,ylim_34_1);
plotgrid_34_1=[xgrid_34_1(:) ygrid_34_1(:)];
subplot(3,2,2)
 regions_34_1=kmeans(plotgrid_34_1,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34_1(:,1),plotgrid_34_1(:,2),regions_34_1);
hold on 
plot(att(:,1),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y

xlim_34_3=min(att(:,1)):0.01:max(att(:,1));
ylim_34_3=min(att(:,4)):0.01:max(att(:,4));
[xgrid_34_3,ygrid_34_3]=meshgrid(xlim_34_3,ylim_34_3);
plotgrid_34_3=[xgrid_34_3(:) ygrid_34_3(:)];
subplot(3,2,3)
 regions_34_3=kmeans(plotgrid_34_3,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34_3(:,1),plotgrid_34_3(:,2),regions_34_3);
hold on 
plot(att(:,1),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y

xlim_34_4=min(att(:,2)):0.01:max(att(:,2));
ylim_34_4=min(att(:,3)):0.01:max(att(:,3));
[xgrid_34_4,ygrid_34_4]=meshgrid(xlim_34_4,ylim_34_4);
plotgrid_34_4=[xgrid_34_4(:) ygrid_34_4(:)];
subplot(3,2,4)
 regions_34_4=kmeans(plotgrid_34_4,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34_4(:,1),plotgrid_34_4(:,2),regions_34_4);
hold on 
plot(att(:,2),att(:,3),'marker','*','markersize',10,'linestyle','none');
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y

xlim_34_5=min(att(:,2)):0.01:max(att(:,2));
ylim_34_5=min(att(:,4)):0.01:max(att(:,4));
[xgrid_34_5,ygrid_34_5]=meshgrid(xlim_34_5,ylim_34_5);
plotgrid_34_5=[xgrid_34_5(:) ygrid_34_5(:)];
subplot(3,2,5)
 regions_34_5=kmeans(plotgrid_34_5,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34_5(:,1),plotgrid_34_5(:,2),regions_34_5);
hold on 
plot(att(:,2),att(:,4),'marker','*','markersize',10,'linestyle','none');
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y

xlim_34_6=min(att(:,3)):0.01:max(att(:,3));
ylim_34_6=min(att(:,4)):0.01:max(att(:,4));
[xgrid_34_6,ygrid_34_6]=meshgrid(xlim_34_6,ylim_34_6);
plotgrid_34_6=[xgrid_34_6(:) ygrid_34_6(:)];
subplot(3,2,6)
 regions_34_6=kmeans(plotgrid_34_6,3,'MaxIter',6,'start',cent_34(:,[1 2]));
 gscatter(plotgrid_34_6(:,1),plotgrid_34_6(:,2),regions_34_6);
hold on 
plot(att(:,3),att(:,4),'marker','*','markersize',10,'linestyle','none');
line(cent_34(:,1),cent_34(:,2),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','DATA','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 3 AND 4');
[silcurve_34,h] = silhouette(att(:,[3 4]),res_34);
mean(silcurve_34)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';