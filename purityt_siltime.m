%graphs 
k_time=[0.0097835,0.0075335,0.00829,0.0090135,0.00589225,0.00891975,0.00694425,0.0070455,0.0097835,0.0075335,0.00829];
k2_time=k_time(:,[6 7 8 9 10 11]);
k3_time=k_time(:,[2 3 4 5]);
k4_time=k_time(:,1);
k_class=['K','K','K','K','K','K','K','K','K','K','K'];
k4_class=k_class(:,1);
k3_class=k_class(:,[2 3 4 5]);
k2_class=k_class(:,[6 7 8 9 10 11]);
a_class=['A','A','A','A','A','A','A','A','A','A','A'];
a_time=[0.009507,0.010582,0.007566,0.004728,0.005387,0.005569,0.005797,0.00942,0.008267,0.02518,0.008337];
a4_class=a_class(:,1);
a3_class=a_class(:,[2 3 4 5]);
a2_class=a_class(:,[6 7 8 9 10 11]);
a2_time=a_time(:,[6 7 8 9 10 11]);
a3_time=a_time(:,[2 3 4 5]);
a4_time=a_time(:,1);
k_purity=[89.33,88,95.33,82.67,89.33,82,88,82.67,92.67,92.67,96];
k2_purity=k_purity(:,[6 7 8 9 10 11]);
k3_purity=k_purity(:,[2 3 4 5]);
k4_purity=k_purity(:,1);
k_sil=[0.7357,0.7330,0.7659,0.6654,0.7523,0.6201,0.7560,0.6813,0.7612,0.7067,0.8055];
k2_sil=k_sil(:,[6 7 8 9 10 11]);
k3_sil=k_sil(:,[2 3 4 5]);
k4_sil=k_sil(:,1);
a_purity=[68,68,68,66.67,69.33,35.33,67.33,34.67,66.67,66.67,67.33];
a2_purity=a_purity(:,[6 7 8 9 10 11]);
a3_purity=k_purity(:,[2 3 4 5]);
a4_purity=k_purity(:,1);
a_sil=[0.6184,0.6433,0.5985,0.5999,0.5934,0.1028,0.4068,-0.3799,0.8019,0.6777,0.6221];
a2_sil=a_sil(:,[6 7 8 9 10 11]);
a3_sil=a_sil(:,[2 3 4 5]);
a4_sil=a_sil(:,1);
clust=[k_purity a_purity];
clust2=[k2_purity a2_purity];
clust3=[k3_purity a3_purity];
clust4=[k4_purity a4_purity];
sil=[k_sil a_sil];
sil2=[k2_sil a2_sil];
sil3=[k3_sil a3_sil];
sil4=[k4_sil a4_sil];
time=[k_time a_time];
time2=[k2_time a2_time];
time3=[k3_time a3_time];
time4=[k4_time a4_time];
class=[k_class a_class];
class2=[k2_class a2_class];
class3=[k3_class a3_class];
class4=[k4_class a4_class];
purgra=[clust' time'];
purgra2=[clust2' time2'];
purgra3=[clust3' time3'];
purgra4=[clust4' time4'];
silgra=[sil',clust'];
silgra2=[sil2' clust2'];
silgra3=[sil3' clust3'];
silgra4=[sil4' clust4'];

%purity vs time graph_allpoints
figure;
gscatter(purgra(:,2),purgra(:,1),class');
line(purgra(11,2),purgra(11,1),'marker','s','color','k','linewidth',1);
line(purgra(11,2),purgra(11,1),'marker','p','color','k','linewidth',1);
line(purgra(15,2),purgra(15,1),'marker','o','color','k','linewidth',1);
grid on;
title('PURITY v/s TIME');
xlabel 'Time (s)';
ylabel('Purity (%)');
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','PUREST CLUSTERING','PREFERRED CLUSTERING','FASTEST CLUSTERING','location','best');
%purity vs time graph_4attributes
figure;
gscatter(purgra4(:,2),purgra4(:,1),class4');
grid on;
title('PURITY v/s TIME OF 4 ATTRIBUTE CLUSTER MODELS');
xlabel 'Time (s)';
ylabel('Purity (%)');
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','location','best');
%purity vs time graph_3attribute
figure;
gscatter(purgra3(:,2),purgra3(:,1),class3');
grid on;
title('PURITY v/s TIME OF 3 ATTRIBUTE CLUSTER MODELS');
xlabel 'Time (s)';
ylabel('Purity (%)');
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','location','best');
%purity vs time graph_2attribute
figure;
gscatter(purgra2(:,2),purgra2(:,1),class2');
grid on;
title('PURITY v/s TIME OF 2 ATTRIBUTE CLUSTER MODELS');
xlabel 'Time (s)';
ylabel('Purity (%)');
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','location','best');
%purity vs silhouette_wholedataset
figure;
gscatter(silgra(:,1),silgra(:,2),class');
line(silgra(11,1),silgra(11,2),'marker','o','color','k','linewidth',1);
grid on;
title('PURITY v/s SILHOUETTE VALUE');
xlabel 'Silhouette Value';
ylabel 'PURITY (%)';
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','MOST EFFICIENT CLUSTERING','location','best');
%purity vs silhouette_4attribute
figure;
gscatter(silgra4(:,1),silgra4(:,2),class4');
grid on;
title('PURITY v/s SILHOUETTE VALUE OF 4 ATTRIBUTE CLUSTER MODELS');
xlabel 'Silhouette Value';
ylabel 'PURITY (%)';
%purity vs silhouette_3attribute
figure;
gscatter(silgra3(:,1),silgra3(:,2),class3');
grid on;
title('PURITY v/s SILHOUETTE VALUE OF 3 ATTRIBUTE CLUSTER MODELS');
xlabel 'Silhouette Value';
ylabel 'PURITY (%)';
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','location','best');
%purity vs silhouette_2attribute
figure;
gscatter(silgra2(:,1),silgra2(:,2),class2');
grid on;
title('PURITY v/s SILHOUETTE VALUE OF 2 ATTRIBUTE CLUSTER MODELS ');
xlabel 'Silhouette Value';
ylabel 'PURITY (%)';
legend('K-MEANS CLUSTERING','AGGLOMERATIVE HIERARCHICAL CLUSTERING','location','best');