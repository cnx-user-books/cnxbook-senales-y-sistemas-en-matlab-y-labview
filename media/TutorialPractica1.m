
clc, close all, echo on
%Practica No 1. Parte A.
%Señales Continuas en el Tiempo.

% Cuando uno comienza a programar es saludable borrar todas las variables y
% cerrar todas las ventanas
clear all;
close all;

% Como Ud. puede verificar no hay nada en el workspace y no hay figuras
% abiertas
pause  %Presiona cualquier tecla para continuar
clc

% Comenzaremos definiendo un vector de tiempo "continuo" partiendo de una
% variable t discreta que toma valores entre -1 y 1 en pasos de 0.05.
% Este último valor se llamará el tiempo de muestreo 
T = 0.05;
t = [-1:T:1];
% En base a este vector construiremos algunas funciones

%Función real decreciente x(t)=exp(-t)
x = exp(-t);
%Gráfico de x(t) vs. t:REVISE EL HELP DE LA FUNCION PLOT
plot(t,x,'-y'); 
title('x(t)=exp(-t)'); % se le coloca nombre a la gráfica
pause  %Presiona cualquier tecla para continuar
clc


%Exponencial Creciente w(t)=exp(t)
w = exp(t);
%Gráfico en otra figura
figure;
plot(t,w,':r');
title('w(t)=exp(t)');

pause  %Presiona cualquier tecla para continuar
clc



%Gráfico de las dos exponenciales sobre la misma figura
figure;
plot(t,x,'-y',t,w,':r');
grid;% La gráfica tiene grilla
pause  %Presiona cualquier tecla para continuar
clc


%Las mismas funciones anteriores con cambios  en la escala de tiempo
x1 = exp(-2*t);
x2 = exp(-t/2);
figure;
plot(t,x1,'-y',t,x2,'--g');
title('x1 = exp(-2*t) -y, x2 = exp(-t/2) --g');
pause  %Presiona cualquier tecla para continuar
clc


x3 = exp(-2*abs(t));
figure;
plot(t,x3,':m');
title('x3 = exp(-2*abs(t))');
pause  %Presiona cualquier tecla para continuar
clc



%Generación de una señal exponencial compleja
%y(t)=exp(j2pit)
y = exp(j*2*pi*t);
figure;
subplot(2,1,1);plot(t,real(y),'-b');
title('Parte real de y(t)=exp(j2pit)');
subplot(2,1,2);plot(t,imag(y),':r');
title('Parte imaginaria de y(t)=exp(j2pit)');
pause  %Presiona cualquier tecla para continuar
clc



%Generación de sinusoides reales
v1 = sin(pi*t-pi/6);
v2 = cos(pi*t+pi/4);
figure;
subplot(2,1,1);plot(t,v1,'r');
title('v1 = sin(pi*t-pi/6)');
subplot(2,1,2);plot(t,v2,'g');
title('v2 = cos(pi*t+pi/4)');
pause  %Presiona cualquier tecla para continuar
clc



%Componentes par e impar de v1
v1par = 0.5*(v1+fliplr(v1));
v1imp = 0.5*(v1-fliplr(v1));

figure;
plot(t,v1par,'-b',t,v1imp,'-r');
title('v1par en azul y v1 impar en rojo');
