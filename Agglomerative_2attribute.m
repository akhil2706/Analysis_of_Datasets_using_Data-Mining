%clustering using agglomerative hierarchical clustering
load fisheriris;
att=meas;
class=species;
%CLUSTERING BASED ON ATTRIBUTE 1 AND 2
tic
agg_12=clusterdata(att(:,[1 2]),'maxclust',3);
toc
%denderogram
figure;
dendrogram(linkage(squareform(pdist(att(:,[1 2])))));
grid on;
title 'CLUSTERING ON SEPAL WIDTH AND SEPAL LENGTHT';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf1=zeros(3,3);
for i=1:length(agg_12)
    if strcmp(species(i),'setosa')==1 
        if agg_12(i)==2
            conf1(1,1)=conf1(1,1)+1;
        end
        if agg_12(i)==3
            conf1(3,1)=conf1(3,1)+1;
        end
        if agg_12(i)==1
            conf1(2,1)=conf1(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_12(i)==2
            conf1(1,2)=conf1(1,2)+1;
        end
        if agg_12(i)==3
            conf1(3,2)=conf1(3,2)+1;
        end
        if agg_12(i)==1
            conf1(2,2)=conf1(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_12(i)==2
            conf1(1,3)=conf1(1,3)+1;
        end
        if agg_12(i)==3
            conf1(3,3)=conf1(3,3)+1;
        end
        if agg_12(i)==1
            conf1(2,3)=conf1(2,3)+1;
        end
        
    end
end
purity=(max(conf1(1,:))+max(conf1(2,:))+max(conf1(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y
figure;
subplot(2,3,1);
gscatter(att(:,1),att(:,2),agg_12);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(2,3,2);
gscatter(att(:,1),att(:,3),agg_12);
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(2,3,3);
gscatter(att(:,1),att(:,4),agg_12);
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(2,3,4);
gscatter(att(:,2),att(:,3),agg_12);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(2,3,5);
gscatter(att(:,2),att(:,4),agg_12);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(2,3,6);
gscatter(att(:,3),att(:,4),agg_12);
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 2');
[silcurve,h] = silhouette(att(:,[1 2]),agg_12);
mean(silcurve)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';



%CLUSTERING BASED ON ATTRIBUTE 1 AND 3
tic
agg_13=clusterdata(att(:,[1 3]),'maxclust',3);
toc
%dendrograph
figure;
dendrogram(linkage(squareform(pdist(att(:,[1 3])))));
grid on;
title 'CLUSTERING ON PETAL LENGTH AND SEPAL LENGTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf2=zeros(3,3);
for i=1:length(agg_13)
    if strcmp(species(i),'setosa')==1 
        if agg_13(i)==2
            conf2(1,1)=conf2(1,1)+1;
        end
        if agg_13(i)==3
            conf2(3,1)=conf2(3,1)+1;
        end
        if agg_13(i)==1
            conf2(2,1)=conf2(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_13(i)==2
            conf2(1,2)=conf2(1,2)+1;
        end
        if agg_13(i)==3
            conf2(3,2)=conf2(3,2)+1;
        end
        if agg_13(i)==1
            conf2(2,2)=conf2(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_13(i)==2
            conf2(1,3)=conf2(1,3)+1;
        end
        if agg_13(i)==3
            conf2(3,3)=conf2(3,3)+1;
        end
        if agg_13(i)==1
            conf2(2,3)=conf2(2,3)+1;
        end
        
    end
end
purity=(max(conf2(1,:))+max(conf2(2,:))+max(conf2(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 3');
subplot(3,2,1);
 gscatter(att(:,1),att(:,2),agg_13);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2);
gscatter(att(:,1),att(:,3),agg_13);
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3);
gscatter(att(:,1),att(:,4),agg_13);
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4);
gscatter(att(:,2),att(:,3),agg_13);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5);
gscatter(att(:,2),att(:,4),agg_13);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6);
gscatter(att(:,3),att(:,4),agg_13);
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 3');
[silcurve,h] = silhouette(att(:,[1 3]),agg_13);
mean(silcurve)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

%CLUSTERING BASED ON ATTRIBUTE 1 AND 4
tic
agg_14=clusterdata(att(:,[1 4]),'maxclust',3);
toc
%dendrogram
figure;
dendrogram(linkage(squareform(pdist(att(:,[1 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND SEPAL LENGTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf3=zeros(3,3);
for i=1:length(agg_14)
    if strcmp(species(i),'setosa')==1 
        if agg_14(i)==2
            conf3(1,1)=conf3(1,1)+1;
        end
        if agg_14(i)==3
            conf3(3,1)=conf3(3,1)+1;
        end
        if agg_14(i)==1
            conf3(2,1)=conf3(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_14(i)==2
            conf3(1,2)=conf3(1,2)+1;
        end
        if agg_14(i)==3
            conf3(3,2)=conf3(3,2)+1;
        end
        if agg_14(i)==1
            conf3(2,2)=conf3(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_14(i)==2
            conf3(1,3)=conf3(1,3)+1;
        end
        if agg_14(i)==3
            conf3(3,3)=conf3(3,3)+1;
        end
        if agg_14(i)==1
            conf3(2,3)=conf3(2,3)+1;
        end
        
    end
end
purity=(max(conf3(1,:))+max(conf3(2,:))+max(conf3(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y


figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 4');
subplot(3,2,1)
 gscatter(att(:,1),att(:,2),agg_14);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2)
gscatter(att(:,1),att(:,3),agg_14);

title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3)
gscatter(att(:,1),att(:,4),agg_14);

title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4)
gscatter(att(:,2),att(:,3),agg_14);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5)
gscatter(att(:,2),att(:,4),agg_14);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6)
gscatter(att(:,3),att(:,4),agg_14);
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 1 AND 4');
[silcurve_14,h] = silhouette(att(:,[1 4]),agg_14);
mean(silcurve_14)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

% CLUSTERING BASED ON ATTRIBUTE 2 AND 3
tic
agg_23=clusterdata(att(:,[2 3]),'maxclust',3);
toc
%dendogram
figure;
dendrogram(linkage(squareform(pdist(att(:,[2 3])))));
grid on;
title 'CLUSTERING ON PETAL LENGTH and SEPAL WIDTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf4=zeros(3,3);
for i=1:length(agg_23)
    if strcmp(species(i),'setosa')==1 
        if agg_23(i)==2
            conf4(1,1)=conf4(1,1)+1;
        end
        if agg_23(i)==3
            conf4(3,1)=conf4(3,1)+1;
        end
        if agg_23(i)==1
            conf4(2,1)=conf4(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_23(i)==2
            conf4(1,2)=conf4(1,2)+1;
        end
        if agg_23(i)==3
            conf4(3,2)=conf4(3,2)+1;
        end
        if agg_23(i)==1
            conf4(2,2)=conf4(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_23(i)==2
            conf4(1,3)=conf4(1,3)+1;
        end
        if agg_23(i)==3
            conf4(3,3)=conf4(3,3)+1;
        end
        if agg_23(i)==1
            conf4(2,3)=conf4(2,3)+1;
        end
        
    end
end
purity=(max(conf4(1,:))+max(conf4(2,:))+max(conf4(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y

figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 3');
subplot(3,2,1)
 gscatter(att(:,1),att(:,2),agg_23);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2)
gscatter(att(:,1),att(:,3),agg_23);
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3)
gscatter(att(:,1),att(:,4),agg_23);
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4)
gscatter(att(:,2),att(:,3),agg_23);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5)
gscatter(att(:,2),att(:,4),agg_23);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6)
gscatter(att(:,3),att(:,4),agg_23);
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 3');
[silcurve_23,h_23] = silhouette(att(:,[2 3]),agg_23);
mean(silcurve_23)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';

% CLUSTERING BASED ON ATTRIBUTE 2 AND 4
tic
agg_24=clusterdata(att(:,[2 4]),'maxclust',3);
toc
%dendogram
figure;
dendrogram(linkage(squareform(pdist(att(:,[2 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND SEPAL WIDTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf5=zeros(3,3);
for i=1:length(agg_24)
    if strcmp(species(i),'setosa')==1 
        if agg_24(i)==2
            conf5(1,1)=conf5(1,1)+1;
        end
        if agg_24(i)==3
            conf5(3,1)=conf5(3,1)+1;
        end
        if agg_24(i)==1
            conf5(2,1)=conf5(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_24(i)==2
            conf5(1,2)=conf5(1,2)+1;
        end
        if agg_24(i)==3
            conf5(3,2)=conf5(3,2)+1;
        end
        if agg_24(i)==1
            conf5(2,2)=conf5(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_24(i)==2
            conf5(1,3)=conf5(1,3)+1;
        end
        if agg_24(i)==3
            conf5(3,3)=conf5(3,3)+1;
        end
        if agg_24(i)==1
            conf5(2,3)=conf5(2,3)+1;
        end
        
    end
end
purity=(max(conf5(1,:))+max(conf5(2,:))+max(conf5(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y


figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 4');
subplot(3,2,1)
 gscatter(att(:,1),att(:,2),agg_24);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2)
gscatter(att(:,1),att(:,3),agg_24);

title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3)
gscatter(att(:,1),att(:,4),agg_24);
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4)
gscatter(att(:,2),att(:,3),agg_24);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5)
gscatter(att(:,2),att(:,4),agg_24);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6)
gscatter(att(:,3),att(:,4),agg_24);

title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
figure('Name','CLUSTERING BASED ON ATTRIBUTE 2 AND 4');
[silcurve_24,h_24] = silhouette(att(:,[2 4]),agg_24);
mean(silcurve_24)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';


% CLUSTERING BASED ON ATTRIBUTE 3 AND 4
tic
agg_34=clusterdata(att(:,[3 4]),'maxclust',3);
toc
%dendrogram
figure;
dendrogram(linkage(squareform(pdist(att(:,[3 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND PETAL LENGTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf6=zeros(3,3);
for i=1:length(agg_34)
    if strcmp(species(i),'setosa')==1 
        if agg_34(i)==2
            conf6(1,1)=conf6(1,1)+1;
        end
        if agg_34(i)==3
            conf6(3,1)=conf6(3,1)+1;
        end
        if agg_34(i)==1
            conf6(2,1)=conf6(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_34(i)==2
            conf6(1,2)=conf6(1,2)+1;
        end
        if agg_34(i)==3
            conf6(3,2)=conf6(3,2)+1;
        end
        if agg_34(i)==1
            conf6(2,2)=conf6(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_34(i)==2
            conf6(1,3)=conf6(1,3)+1;
        end
        if agg_34(i)==3
            conf6(3,3)=conf6(3,3)+1;
        end
        if agg_34(i)==1
            conf6(2,3)=conf6(2,3)+1;
        end
        
    end
end
purity=(max(conf6(1,:))+max(conf6(2,:))+max(conf6(3,:)))./150
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y


figure('Name','CLUSTERING BASED ON ATTRIBUTE 3 AND 4');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),agg_34);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2)
gscatter(att(:,1),att(:,3),agg_34);
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3)
gscatter(att(:,1),att(:,4),agg_34);

title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4)
gscatter(att(:,2),att(:,3),agg_34);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5)
gscatter(att(:,2),att(:,4),agg_34);

title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6)
gscatter(att(:,3),att(:,4),agg_34);
xlabel 'PETAL LENGTH (cm)';
ylabel 'PETAL WIDTH (cm)';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%silhouette curve
figure('Name','CLUSTERING BASED ON ATTRIBUTE 3 AND 4');
[silcurve_34,h] = silhouette(att(:,[3 4]),agg_34);
mean(silcurve_34)
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';