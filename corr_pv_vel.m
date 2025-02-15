data = load('clean_press_vel_225p_v4_onedoor3.6m.txt');

[n, m]= size(data);
num_timestep= n/225
data2=data(1:n,:);

d=0.6;

%index = find (data2(:,1)<(20-2*d) & (20-3*d)<data2(:,1));
%index2= find (data2(:,1)<(20-d) & (20-2*d)<data2(:,1));
index3= find (data2(:,1)<20 & (20-d)<data2(:,1));
hold on
%plot(data2(index,2),data2(index,3),'.')
%plot(data2(index2,2),data2(index2,3),'r.')
plot(data2(index3,2),data2(index3,3),'g.')

axis([0,15000,0,5])

xl=xlabel('PV'); 
set(xl,'FontSize',16);
yl=ylabel('speed (m/s)'); 
set(yl,'FontSize',16);
l=legend('19.4 < x < 20 | Door size 3.6m');
set(l,'FontSize',16);

