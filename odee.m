function dx=odee(t,x) 

m1=0.2;
l1=0.3;
m2=0.1;
l2=0.25;
g=9.81;
c1=0.2;

dx=zeros(4,1);

A=[(m1+m2)*l1 m2*l2*cos(x(2)-x(1));l1*cos(x(2)-x(1)) l2];
B=[c1 -m2*l2*x(4)*sin(x(2)-x(1));l1*x(3)*sin(x(2)-x(1)) 0];
C=[(m1+m2)*g*sin(x(1));g*sin(x(2))];

%----Representacion de espacio de estado----%
dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=inv(A)*(-B*[x(3);x(4)]-C);