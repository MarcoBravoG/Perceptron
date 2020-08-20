clear all; close all; clc;
puntosVerdesx=[1 1 1.5];
puntosVerdesy=[1 1.2 .8];
puntosAzulesx=[1 1 2 2.2 2.6 3 3.1];
puntosAzulesy=[2.1 3 2.8 2.1 1.5 3 1.8];
hold on;
plot(puntosVerdesx, puntosVerdesy,'og','MarkerFaceColor','g')
plot(puntosAzulesx, puntosAzulesy,'ob','MarkerFaceColor','b')
xlabel('p1')
ylabel('p2')
l1=[0 3.5]; %dominio
l2=[0 3.5]  %rango
p11=[0 3];   % corte en y
p22=[3 0]; % corte en x
axis ([l1 l2]) %limites Dominio y rango
plot(p11,p22) %con esto grafico la recta




hold off
PVerdes=[puntosVerdesx;puntosVerdesy];
PAzules=[puntosAzulesx;puntosAzulesy];
b=1;
w1=[-1/3;-1/2]; %vector
W=[w1'];        %trasponemos 
n=W*PVerdes+b
a=hardlim(n);
a=hardlim(W*PAzules+b);
figure(2)
hold on
plot(p11,p22)
xlabel('P1')
ylabel('P2')
axis([l1 l2])
while (b==1)
   p1=input('Introdusca la coordenada en p1(x)');
   p2=input('Introdusca la coordenada en p2(y)');
   p=[p1;p2];
   a=hardlim(W*p+b)
   if(a==1)
    disp('el punto es verde')
    plot(p1, p2,'og','MarkerFaceColor','g')
   else disp('el punto es azul')
        plot(p1,p2,'ob','MarkerFaceColor','b')
   end
end
hold off











