[t,x]=ode45(@odee,[0 10], [0 (35*pi)/180 0 0]);

%--Figura 1--%
figure(1)
plot(t,x(:,1), 'g');
grid on
title("Posición de Theta 1");
xlabel("Tiempo");
ylabel("Radianes");

%--Figura 2--%
figure(2)
plot(t,x(:,2),'c'); 
grid on
title("Posición de Theta 2");
xlabel("Tiempo");
ylabel("Radianes");