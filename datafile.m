load fisheriris;
setindices=rand(35,1)*50;
versiindices=rand(35,1)*100;
virginindices=rand(35,1)*150;
for i=1:35
 if  setindices(i) < 1
     setindices(i)=setindices(i)+1;
 end   
if versiindices(i) < 50
    versiindices(i)=versiindices(i)+50;
end
if virginindices(i) < 50
   virginindices(i)=virginindices(i)+100;
end 
if virginindices(i) < 100
   virginindices(i)=virginindices(i)+50;
end
end
setindices=floor(setindices);
versiindices=floor(versiindices);
virginindices=floor(virginindices);
trainset=[setindices;versiindices;virginindices];
trainset=unique(trainset);

for i=1:length(trainset)
traindata(i,:)=meas(trainset(i),:);
trainclass(i,:)=species(trainset(i),:);
meas(trainset(i),1)=0;
%species(trainset(i),1)={'none'};
end
k=1;
for i=1:length(meas)
    if meas(i,1) ~= 0
        testdata(k,:)=meas(i,:);
        testclass(k,:)=species(i,:);
        k=k+1;
    end 
end