


clear all
close all
clc,echo on
%                      MATLAB 

% MATLAB es un programa basado en matrices que permite resolver problemas 
% numéricos de todo tipo.

% El prompt de comandos es >> y como puede haber observado los comentarios
% van precedidos del signo %
% Si uno conoce el nombre del comando y quiere saber como funciona basta
% escribir Help NOMBREDELCOMANDO y enter. Hay que entender que MATLAB ES
% "case sensitive" por lo tanto hay que cuidar el uso de mayúsculas y
% minúsculas
% Por ejemplo




help tan

pause  %Presiona cualquier tecla para continuar

% Si en determinado momento uno quiere salirse de MATLAB puede escribir
% en la línea de comando exit o quit.Si se está ejecutando un programa se
% aplica CONTROL C y se abortará la ejecución.

% OPERACIONES BASICAS
% Los símbolos correspondientes a las operaciones matemáticas mas usadas 
% son: "+, -, *, /"  (entendiendo que estos operarán sobre matrices)
% Si se escribe en la línea de comando cos(2*pi) y presiona enter, en el
% command window aparecerá el valor 1. (pi es una variable predefinida)


cos(2*pi)

% aparecerá
%ans
%= 1

%Observe que el resultado se asignó a una variable por default que se llama ans


pause  %Presiona cualquier tecla para continuar


clc

% Otras funciones son las exponenciales
exp(-1)    % e^(-1)
ans*exp(1)   %ans es e^(-1) por lo que este resultado dará 1
% ans siempre almacena el valor mas reciente

pause  %Presiona cualquier tecla para continuar
clc

%Arreglos o Vectores 
% %Si uno escribe

x=[1 2 3 4] %esto genera una variable x de 1 fila y 4 columnas

pause  %Presiona cualquier tecla para continuar
clc

% También podemos generar este mismo vector x escribiendo

x=1:4

% Si uno quiere que el incremento entre los números sea otro

y=0.2:.2:1.1
%genera y= [.2 .4 .6 .8 1.0]
pause  %Presiona cualquier tecla para continuar
clc

%Si uno no desea que los resultados aparezcan el la Ventana de comandos 
% debe usar punto y coma  ";"


z=1:300;
%Al ejecutar este comando aunque no se vea nada la variable z 
% ha sido creada y almacenada en lo que se llama el workspace.
% Si quiere ver que contiene z en su primera posición

z(1)  

pause  %Presiona cualquier tecla para continuar
clc


% CONCATENAR VARIABLES
% Si Ud. escribe

x=2,y=3*x*x;z=y-6*x  %Esto presentará en el Command Window solo las variables x 
% y la variable z

pause  %Presiona cualquier tecla para continuar
clc
%VARIABLES y MATRICES
% En Matlab todas las variables son matrices. Los escalares son matrices de
% 1x1

% Por ejemplo creemos una matriz de 2 filas y 3 columnas


b=[1 2 4; 3 1 2]   

pause  %Presiona cualquier tecla para continuar
clc

% Si queremos tomar los elementos de la segunda fila y asignarlo a 
% una variable c


c=b(2,:) 


pause  %Presiona cualquier tecla para continuar
clc
% Se pueden generar matrices y vectores llenos de ceros o de unos
 
a=zeros(2,3)  %Esto es una matriz de 2 filas y 3 columnas llenas de ceros
b=ones(2,3)  %Esto es una matriz de 2x3 llenas de "1"
c=eye(3)  %Esta es una matriz identidad de 3x3
pause  %strike a key to continue
clc

%NUMEROS COMPLEJOS
% Se pueden representar números complejos usando la letra i o la letra j

zc=2+j*3 
%Se puede interrogar por la parte real o imaginaria de zc

zr=real(zc),zi=imag(zc)  


pause  %Presiona cualquier tecla para continuar

%También se puede determinar la magnitud y la fase en radianes


zabs=abs(zc),zr=angle(zc) 

% O calcular el complejo conjugado

zstar=conj(zc)  
pause  %Presiona cualquier tecla para continuar
clc
%Traspuesta de una matriz

%Suponga
c=[1 5 2;3 4 8]   
%La traspuesta se calcula con la comilla simple

c'   
pause  %Presiona cualquier tecla para continuar
clc

%OPERACIONES ENTRE PUNTO A PUNTO

% Si uno desea  multiplicar dos vectores de idénticas dimensiones debe
% colocar ".*"
a=[1 2 3 4]
b=[4 5 6 7]
c=a.*b
% Si no se coloca el punto previo al * tratará de hacer multiplicación
% matricial y como las dimensiones no son las adecuadas dará un error


pause  %Presiona cualquier tecla para continuar

clc
% Lo mismo se aplica a la división

%EXPONENCIACION
%La exponenciación puede ser elemento a elemento o matricial(y en este caso
%hay que cuidar las dimensiones)
a=[1 2;3 4],b=a.^2,c=(2).^a

pause  %Presiona cualquier tecla para continuar

clc 
% OPERACIONES UTILES
%round(x): rEDONDEA LOS ELEMENTOS DE x A LOS ENTEROS MAS CERCANOS 
x=[2.1 3.6;-3.1 -3.6],y=round(x)
pause  %Presiona cualquier tecla para continuar
clc 


%fix(x): Trunca la parte fraccional de los elementos de x 
x=[2.1 3.6;-3.1 -3.6],y=fix(x)
pause  %Presiona cualquier tecla para continuar
clc 

%floor(x), ceil(x): Redondea los elementos de x a los enteros mas cercanos
%por debajo o por arriba
x=[2.1 3.6;-3.1 -3.6],y=floor(x),z=ceil(x)
pause  %Presiona cualquier tecla para continuar
clc 

%sign(x): Produce 1 si x>0 or -1 if x<0 and 0 if x=0
x=[2.1 3.6;-3.1 0],y=sign(x)
pause  %Presiona cualquier tecla para continuar
clc 

%mean(x): produce el promedio de cada columna de  x
x=[2.1 3.6 1.5;-3.1 1 2.3],y=mean(x)
pause  %Presiona cualquier tecla para continuar
clc 

%min(x),max(x): Produce los valores mínimos o máximos de cada columna de x 
x=[2.1 3.6 1.5;-3.1 1 2.3],ymin=min(x),ymax=max(x)
pause  %Presiona cualquier tecla para continuar
clc 

%sum(x),prod(x) sum o producto de las columnas de x
x=[2 4 3;-3 4 2;2 1 -1],y=sum(x),z=prod(x)
pause  %strike a key to continue
clc 



echo off 

clear all
