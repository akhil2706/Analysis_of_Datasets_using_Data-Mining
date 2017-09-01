load fisheriris;
att=meas;
class=species;
%CLUSTER BASED ON ATTRIBUTE 1,2 & 3
tic
agg_123=clusterdata(att(:,[1 2 3]),'maxclust',3);
figure;
%dendrogram
dendrogram(linkage(squareform(pdist(att))));
grid on;
title 'CLUSTERING ON PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTHT';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
toc
%purity
conf=zeros(3,3);
for i=1:length(agg_123)
    if strcmp(species(i),'setosa')==1 
        if agg_123(i)==2
            conf(1,1)=conf(1,1)+1;
        end
        if agg_123(i)==3
            conf(3,1)=conf(3,1)+1;
        end
        if agg_123(i)==1
            conf(2,1)=conf(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_123(i)==2
            conf(1,2)=conf(1,2)+1;
        end
        if agg_123(i)==3
            conf(3,2)=conf(3,2)+1;
        end
        if agg_123(i)==1
            conf(2,2)=conf(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_123(i)==2
            conf(1,3)=conf(1,3)+1;
        end
        if agg_123(i)==3
            conf(3,3)=conf(3,3)+1;
        end
        if agg_123(i)==1
            conf(2,3)=conf(2,3)+1;
        end
        
    end
end
purity=(max(conf(1,:))+max(conf(2,:))+max(conf(3,:)))./150
%graph wrt attributes 1,2 and 3
figure ('Name','CLUSTER BASED ON ATTRIBUTE 1,2 & 3');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),agg_123);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),agg_123);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attributes 1,3,4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),agg_123);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph  wrt attributes 1,2,4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),agg_123);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
figure ('Name','CLUSTER BASED ON ATTRIBUTE 1,2 & 3');
%silhouette curve
[silcurve_123,h_123]=silhouette(att(:,[1 2 3]),agg_123);
mean(silcurve_123)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
%CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4
tic
agg_234=clusterdata(att(:,[2 3 4]),'maxclust',3);
figure;
%dendrogram
dendrogram(linkage(squareform(pdist(att(:,[2 3 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND PETAL LENGTH AND SEPAL WIDTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
toc
%purity
conf2=zeros(3,3);
for i=1:length(agg_234)
    if strcmp(species(i),'setosa')==1 
        if agg_234(i)==2
            conf2(1,1)=conf2(1,1)+1;
        end
        if agg_234(i)==3
            conf2(3,1)=conf2(3,1)+1;
        end
        if agg_234(i)==1
            conf2(2,1)=conf2(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_234(i)==2
            conf2(1,2)=conf2(1,2)+1;
        end
        if agg_234(i)==3
            conf2(3,2)=conf2(3,2)+1;
        end
        if agg_234(i)==1
            conf2(2,2)=conf2(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_234(i)==2
            conf2(1,3)=conf2(1,3)+1;
        end
        if agg_234(i)==3
            conf2(3,3)=conf2(3,3)+1;
        end
        if agg_234(i)==1
            conf2(2,3)=conf2(2,3)+1;
        end
        
    end
end
purity=(max(conf2(1,:))+max(conf2(2,:))+max(conf2(3,:)))./150

%graph between 1,2,3
 figure ('Name','CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4');
 subplot(2,2,1);
 grid on;
 gscatter3(att(:,1),att(:,2),att(:,3),agg_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),agg_234);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between 1,2,4
subplot(2,2,3);
grid on
gscatter3(att(:,1),att(:,2),att(:,4),agg_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between 1,3,4
subplot(2,2,4);
 grid on;
gscatter3(att(:,1),att(:,3),att(:,4),agg_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%silhouette curve
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4');
[silcurve_234,h_234]=silhouette(att(:,[2 3 4]),agg_234);
mean(silcurve_234)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
%CLUSTERING BETWEEN 1,2 AND 4 
tic
agg_124=clusterdata(att(:,[1 2 4]),'maxclust',3);
toc
figure;
%dendrogram
dendrogram(linkage(squareform(pdist(att(:,[1 2 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND SEPAL WIDTH AND SEPAL LENGTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf3=zeros(3,3);
for i=1:length(agg_124)
    if strcmp(species(i),'setosa')==1 
        if agg_124(i)==2
            conf3(1,1)=conf3(1,1)+1;
        end
        if agg_124(i)==3
            conf3(3,1)=conf3(3,1)+1;
        end
        if agg_124(i)==1
            conf3(2,1)=conf3(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_124(i)==2
            conf3(1,2)=conf3(1,2)+1;
        end
        if agg_124(i)==3
            conf3(3,2)=conf3(3,2)+1;
        end
        if agg_124(i)==1
            conf3(2,2)=conf3(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_124(i)==2
            conf3(1,3)=conf3(1,3)+1;
        end
        if agg_124(i)==3
            conf3(3,3)=conf3(3,3)+1;
        end
        if agg_124(i)==1
            conf3(2,3)=conf3(2,3)+1;
        end
        
    end
end
purity=(max(conf3(1,:))+max(conf3(2,:))+max(conf3(3,:)))./150

%graph wrt 1 2 3 
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1,2 AND 4');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),agg_124);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt 2 3 4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),agg_124);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt 1 2 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),agg_124);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt 1 3 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),agg_124);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
hold off;
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1,2 AND 4');
%silhouette curve
[silcurve_124,h_124]=silhouette(att(:,[1 2 4]),agg_124);
mean(silcurve_124)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';

% CLUSTERING BASED ON 1, 3 AND 4
tic
agg_134=clusterdata(att(:,[1 3 4]),'maxclust',3);
figure;
%denderogram
dendrogram(linkage(squareform(pdist(att(:,[1 3 4])))));
grid on;
title 'CLUSTERING ON PETAL WIDTH AND PETAL LENGTH AND SEPAL LENGTH';
xlabel 'Indies of Points';
ylabel 'Distance b/w Clusters';
%purity
conf4=zeros(3,3);
toc
for i=1:length(agg_134)
    if strcmp(species(i),'setosa')==1 
        if agg_134(i)==2
            conf4(1,1)=conf4(1,1)+1;
        end
        if agg_134(i)==3
            conf4(3,1)=conf4(3,1)+1;
        end
        if agg_134(i)==1
            conf4(2,1)=conf4(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if agg_134(i)==2
            conf4(1,2)=conf4(1,2)+1;
        end
        if agg_134(i)==3
            conf4(3,2)=conf4(3,2)+1;
        end
        if agg_134(i)==1
            conf4(2,2)=conf4(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if agg_134(i)==2
            conf4(1,3)=conf4(1,3)+1;
        end
        if agg_134(i)==3
            conf4(3,3)=conf4(3,3)+1;
        end
        if agg_134(i)==1
            conf4(2,3)=conf4(2,3)+1;
        end
        
    end
end
purity=(max(conf4(1,:))+max(conf4(2,:))+max(conf4(3,:)))./150
%graph wrt 1 2 3 
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1, 3 AND 4');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),agg_134);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt 2 3 4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),agg_134);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt between 1,2,4
subplot(2,2,3);
grid on
gscatter3(att(:,1),att(:,2),att(:,4),agg_134);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between wrt 1,3,4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),agg_134);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1, 3 AND 4');
%silhouette curve
[silcurve_134,h_134]=silhouette(att(:,[1 3 4]),agg_134);
mean(silcurve_134)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';