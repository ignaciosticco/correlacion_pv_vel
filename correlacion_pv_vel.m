load("out_print_flujo_225p_v4_door3_6.txt");
load("out_print_press_225p_v4_door3.6.txt");

for i=1:21,
	for j=1:21,

		vel(i,j)=sqrt(Mvx(i,j)*Mvx(i,j)+Mvy(i,j)*Mvy(i,j));
	end
end

v=reshape(vel,21*21,1);
p=reshape(P,21*21,1);

plot(p,v,'o')
xlabel('PV') 
ylabel('speed (m/s)') 

%%%% Superponer P y vel %%%%%

%[n,m]=size(PP);
%minimo=0;
%maximo=20;
%delta=21;
%celda_x=linspace(minimo,maximo,delta);
%celda_y=linspace(minimo,maximo,delta);
%xx=linspace(minimo,maximo,n);
%yy=linspace(minimo,maximo,m);

%hold on
%contourf(xx,yy,PP);
%colorbar;
%set(colorbar,'fontsize',17);
%set(gca,'FontSize',17)
%axis([15 20 0 20])
%figure
%quiver(celda_x,celda_y,Mvx,Mvy)
%streamline(celda_x,celda_y,Mvx,Mvy)


