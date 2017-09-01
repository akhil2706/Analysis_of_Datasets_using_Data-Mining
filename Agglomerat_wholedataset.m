load fisheriris;
att=meas;
class=species;
tic
agg=clusterdata(att,'maxclust',3);
toc
figure;
%dendrogram
dendrogram(linkage(squareform(pdist(att))));
grid on;
title 'CLUSTERING ON ENTIRE DATASET';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf=zeros(3,3);
for i=1:length(agg)
    if strcmp(species(i),'setosa')==1 
        if agg(i)==2
            conf(1,1)=conf(1,1)+1;
        end
        if agg(i)==3
            conf(3,1)=conf(3,1)+1;
        end
        if agg(i)==1
            conf(2,1)=conf(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg(i)==2
            conf(1,2)=conf(1,2)+1;
        end
        if agg(i)==3
            conf(3,2)=conf(3,2)+1;
        end
        if agg(i)==1
            conf(2,2)=conf(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg(i)==2
            conf(1,3)=conf(1,3)+1;
        end
        if agg(i)==3
            conf(3,3)=conf(3,3)+1;
        end
        if agg(i)==1
            conf(2,3)=conf(2,3)+1;
        end
        
    end
end
purity=(max(conf(1,:))+max(conf(2,:))+max(conf(3,:)))./150


%CLUSTERING GRAPH WRT TO ATT1-X AND ATT2-Y
figure('Name','CLUSTERING ON ENTIRE DATASET');
subplot(3,2,1)
gscatter(att(:,1),att(:,2),agg);
title 'SEPAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT3-Y
subplot(3,2,2);
gscatter(att(:,1),att(:,3),agg);
title 'PETAL LENGTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'PETAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT1-X AND ATT4-Y
subplot(3,2,3);
gscatter(att(:,1),att(:,4),agg);
title 'PETAL WIDTH v/s SEPAL LENGTH';
xlabel 'SEPAL LENGTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT3-Y
subplot(3,2,4);
gscatter(att(:,2),att(:,3),agg);
title 'PETAL LENGTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH';
ylabel 'PETAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT2-X AND ATT4-Y
subplot(3,2,5);
gscatter(att(:,2),att(:,4),agg);
title 'PETAL WIDTH v/s SEPAL WIDTH';
xlabel 'SEPAL WIDTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
%CLUSTERING GRAPH WRT TO ATT3-X AND ATT4-Y
subplot(3,2,6);
gscatter(att(:,3),att(:,4),agg);
title 'PETAL WIDTH v/s PETAL LENGTH';
xlabel 'PETAL LENGTH';
ylabel 'PETAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;

%CLUSTERING GRAPH WRT TO  ATT1-X,ATT2-Y AND ATT3-Z
figure('Name','CLUSTERING ON ENTIRE DATASET');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),agg);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT2-X,ATT3-Y AND ATT4-Z
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),agg);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT1-X,ATT2-Y AND ATT4-Z
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),agg);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%CLUSTERING GRAPH WRT TO  ATT1-X,ATT3-Y AND ATT4-Z
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),agg);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
figure('Name','CLUSTERING ON ENTIRE DATASET');
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%silhouette curve 
[silcurve,h] = silhouette(att,agg);
ylabel 'CLUSTER';
xlabel 'SILHOUETTE VALUE';
title 'SILHOUETTE CURVE';
display(mean(silcurve));