data = load('clean_press_vel_225p_v4_onedoor3.6m.txt');

[n, m]= size(data);
num_timestep= n/225;
%data2=data(1:n,:);

d=0.6;
up_up=11.8;
up_dn=10.6;
dn_up=9.4;
dn_dn=8.2;

%%% 19.4<x<20 %%%%
index1= find (data(:,1)<20 & (20-d)<data(:,1) & (dn_dn)<data(:,2) & data(:,2)<(dn_up) );

%%% 18.8<x<19.4 %%%%
%index2= find (data(:,1)<(20-d) & (20-2*d)<data(:,1) & (up_dn)<data(:,2) & data(:,2)<(up_up));

%%% 18.2<x<18.8 %%%%
%index3 = find (data(:,1)<(20-2*d) & (20-3*d)<data(:,1));


hold on
plot(data(index1,3),data(index1,4),'g.')
%plot(data(index2,3),data(index2,4),'r.')
%plot(data(index3,2),data(index3,3),'g.')

%axis([0,15000,0,5])

xl=xlabel('PV'); 
set(xl,'FontSize',16);
yl=ylabel('speed (m/s)'); 
set(yl,'FontSize',16);
l=legend('19.4 < x < 20 | 8.2 < y < 9.4 |Door size 3.6 m');
set(l,'FontSize',16);
