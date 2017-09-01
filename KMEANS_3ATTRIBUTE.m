load fisheriris;
att=meas;
class=species;
%CLUSTER BASED ON ATTRIBUTE 1,2 & 3
tic
[res_123,cent_123]=kmeans(att(:,[1 2 3]),3,'Replicates',4);
toc
%purity
conf=zeros(3,3);
for i=1:length(res_123)
    if strcmp(species(i),'setosa')==1 
        if res_123(i)==2
            conf(1,1)=conf(1,1)+1;
        end
        if res_123(i)==3
            conf(3,1)=conf(3,1)+1;
        end
        if res_123(i)==1
            conf(2,1)=conf(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_123(i)==2
            conf(1,2)=conf(1,2)+1;
        end
        if res_123(i)==3
            conf(3,2)=conf(3,2)+1;
        end
        if res_123(i)==1
            conf(2,2)=conf(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_123(i)==2
            conf(1,3)=conf(1,3)+1;
        end
        if res_123(i)==3
            conf(3,3)=conf(3,3)+1;
        end
        if res_123(i)==1
            conf(2,3)=conf(2,3)+1;
        end
        
    end
end
purity=(max(conf(1,:))+max(conf(2,:))+max(conf(3,:)))./150
%graph wrt attribute 1,2 and 3
figure ('Name','CLUSTER BASED ON ATTRIBUTE 1,2 & 3');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),res_123);
line(cent_123(:,1),cent_123(:,2),cent_123(:,3),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%graph wrt attribute 2,3 and 4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),res_123);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attribute 1,3,4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),res_123);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attribute 1,2,4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),res_123);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%silhouette curve
figure ('Name','CLUSTER BASED ON ATTRIBUTE 1,2 & 3');
[silcurve_123,h_123]=silhouette(att(:,[1 2 3]),res_123);
mean(silcurve_123)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
conf2=zeros(3,3);
%CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4
tic
[res_234,cent_234]=kmeans(att(:,[2 3 4]),3,'Replicates',4);
toc
%purity
for i=1:length(res_234)
    if strcmp(species(i),'setosa')==1 
        if res_234(i)==2
            conf2(1,1)=conf2(1,1)+1;
        end
        if res_234(i)==3
            conf2(3,1)=conf2(3,1)+1;
        end
        if res_234(i)==1
            conf2(2,1)=conf2(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_234(i)==2
            conf2(1,2)=conf2(1,2)+1;
        end
        if res_234(i)==3
            conf2(3,2)=conf2(3,2)+1;
        end
        if res_234(i)==1
            conf2(2,2)=conf2(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_234(i)==2
            conf2(1,3)=conf2(1,3)+1;
        end
        if res_234(i)==3
            conf2(3,3)=conf2(3,3)+1;
        end
        if res_234(i)==1
            conf2(2,3)=conf2(2,3)+1;
        end
        
    end
end
purity=(max(conf2(1,:))+max(conf2(2,:))+max(conf2(3,:)))./150

%graph wrt attribute 1,2,3
 figure ('Name','CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4)');
 subplot(2,2,1);
 grid on;
 gscatter3(att(:,1),att(:,2),att(:,3),res_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between attribute 2,3,4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),res_234);
line(cent_234(:,1),cent_234(:,2),cent_234(:,3),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%graph between attribute 1,2,4
subplot(2,2,3);
grid on
gscatter3(att(:,1),att(:,2),att(:,4),res_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between attribute 1,3,4
subplot(2,2,4);
 grid on;
gscatter3(att(:,1),att(:,3),att(:,4),res_234);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%silhouette curve
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 2,3 AND 4');
[silcurve_234,h_234]=silhouette(att(:,[2 3 4]),res_234);
mean(silcurve_234)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
conf3=zeros(3,3);
%CLUSTERING BETWEEN 1,2 AND 4 
tic
[res_124,cent_124]=kmeans(att(:,[1 2 4]),3,'Replicates',4);
toc
%purity
for i=1:length(res_124)
    if strcmp(species(i),'setosa')==1 
        if res_124(i)==2
            conf3(1,1)=conf3(1,1)+1;
        end
        if res_124(i)==3
            conf3(3,1)=conf3(3,1)+1;
        end
        if res_124(i)==1
            conf3(2,1)=conf3(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_124(i)==2
            conf3(1,2)=conf3(1,2)+1;
        end
        if res_124(i)==3
            conf3(3,2)=conf3(3,2)+1;
        end
        if res_124(i)==1
            conf3(2,2)=conf3(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_124(i)==2
            conf3(1,3)=conf3(1,3)+1;
        end
        if res_124(i)==3
            conf3(3,3)=conf3(3,3)+1;
        end
        if res_124(i)==1
            conf3(2,3)=conf3(2,3)+1;
        end
        
    end
end
purity=(max(conf3(1,:))+max(conf3(2,:))+max(conf3(3,:)))./150

%graph wrt attribute 1 2 3 
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1,2 AND 4d');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),res_124);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attribute 2 3 4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),res_124);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attribute 1 2 4
subplot(2,2,3);
grid on;
gscatter3(att(:,1),att(:,2),att(:,4),res_124);
line(cent_124(:,1),cent_124(:,2),cent_124(:,3),'marker','x','color','k','markersize',12,'linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%graph wrt attribute 1 3 4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),res_124);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%silhouette curve
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1,2 AND 4');
[silcurve_124,h_124]=silhouette(att(:,[1 2 4]),res_124);
mean(silcurve_124)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
conf4=zeros(3,3);
% %CLUSTERING BASED ON 1, 3 AND 4
tic
[res_134,cent_134]=kmeans(att(:,[1 3 4]),3,'Replicates',4);
toc
%purity
for i=1:length(res_134)
    if strcmp(species(i),'setosa')==1 
        if res_134(i)==2
            conf4(1,1)=conf4(1,1)+1;
        end
        if res_134(i)==3
            conf4(3,1)=conf4(3,1)+1;
        end
        if res_134(i)==1
            conf4(2,1)=conf4(2,1)+1;
        end
        
    end
    if strcmp(species(i),'versicolor')==1 
        if res_134(i)==2
            conf4(1,2)=conf4(1,2)+1;
        end
        if res_134(i)==3
            conf4(3,2)=conf4(3,2)+1;
        end
        if res_134(i)==1
            conf4(2,2)=conf4(2,2)+1;
        end
        
    end
    if strcmp(species(i),'virginica')==1 
        if res_134(i)==2
            conf4(1,3)=conf4(1,3)+1;
        end
        if res_134(i)==3
            conf4(3,3)=conf4(3,3)+1;
        end
        if res_134(i)==1
            conf4(2,3)=conf4(2,3)+1;
        end
        
    end
end
purity=(max(conf4(1,:))+max(conf4(2,:))+max(conf4(3,:)))./150

%graph wrt attribute 1 2 3 
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1, 3 AND 4');
subplot(2,2,1);
grid on;
gscatter3(att(:,1),att(:,2),att(:,3),res_134);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL LENGTH (cm)';
title 'PETAL LENGTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph wrt attribute 2 3 4
subplot(2,2,2);
grid on;
gscatter3(att(:,2),att(:,3),att(:,4),res_134);
xlabel 'SEPAL WIDTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL WIDTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between wrt attribute 1,2,4
subplot(2,2,3);
grid on
gscatter3(att(:,1),att(:,2),att(:,4),res_134);
xlabel 'SEPAL LENGTH (cm)';
ylabel 'SEPAL WIDTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s SEPAL WIDTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','LOCATION','BEST');
%graph between wrt attribute 1,3,4
subplot(2,2,4);
grid on;
gscatter3(att(:,1),att(:,3),att(:,4),res_134);
line(cent_134(:,1),cent_134(:,2),cent_134(:,3),'marker','x','markersize',12,'color','k','linewidth',4,'linestyle','none');
xlabel 'SEPAL LENGTH (cm)';
ylabel 'PETAL LENGTH (cm)';
zlabel 'PETAL WIDTH (cm)';
title 'PETAL WIDTH v/s PETAL LENGTH v/s SEPAL LENGTH';
legend('REGION 1','REGION 2','REGION 3','CENTROID','LOCATION','BEST');
%silhouette curve
figure ('Name','CLUSTERING BASED ON ATTRIBUTE 1, 3 AND 4');
[silcurve_134,h_134]=silhouette(att(:,[1 3 4]),res_134);
mean(silcurve_134)
xlabel 'SILHOUETTE VALUES';
ylabel 'CLUSTER REGIONS';
title 'SILHOUETTE CURVE';
