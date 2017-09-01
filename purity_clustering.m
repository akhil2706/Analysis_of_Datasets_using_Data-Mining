att=meas;
class=species;
tic
[res,cent]=kmeans(att,3,'Replicates',4);
toc
display(mean(silcurve));
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
