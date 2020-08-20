% https://www.youtube.com/watch?v=PBysQlwxLq4
%
% x1 x2   salida
% 0  0  = 1
% 0  1  = 1
% 1  0  = 1
% 1  1  = 0

% x=[0 -1 0 1 0 1; 0 0 -1 0 1 1];
% d=[0 0 0 1 1 1];


x=[0 0 1 1; 0 1 0 1];
d=[0 1 1 0];
plotpv(x,d)
red=newp([0 1; 0 1],1); % Donde: red=objeto donde se va
                        % almacenando la red creada por Matlab
                        % [0 1;0 1]= Rango del valor de la entrada de la
                        % red neuronal, el numero de filas de esta matriz 
                        % lo utilizara matlab para definir el numero de
                        % entrdas que tiene la red neuronal.
                        % 1=Numero de neuronas que tiene la RN en la capa
                        % de salida
                        % X= Entrada de los patrones de aprendizaje
 red.iw{1,1}=[1 1];
 red.b{1}=0.5;
 pesos=red.iw{1,1};
 bias=red.b{1};         
 plotpc(pesos,bias)     % con el siguiente comando se grafica la linea de 
                        % separacion que tiene el perceptron
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                        
 %entrenamiento de la red  
 
 red=train(red,x,d)     % red=red a ser entrenada por el MATLAB
                        % X=Entrada de los patrones de aprendizaje.
                        % D= SAlida deseada de los patrones de
 % Cuando se ha entrenado la red, se puede visualizar en la grafica donde
 % se muestra la lineaclasificadora que la red ha llevado a cabo la tarea
 figure(2)
 pesos=red.iw{1, 1};
 bias=red.b{1};
 plotpv(x,d);
 plotpc(pesos,bias)
 prueba1=[0;0];
 prueba2=[0;1];
 prueba3=[1;0];
 prueba4=[1;1];
 
 s1=sim(red,prueba1)
 s2=sim(red,prueba2)
 s3=sim(red,prueba3)
 s4=sim(red,prueba4)
 
 