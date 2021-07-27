%clc ;clear all; close all;
% 
% x =[2 4 -2 3 6];
% n =-1:3; 
% 
% stem(n,x);
% % 1.yol
% n2 =0:4;
% 
% figure ;
% stem(n2,x), title('x[n-1]')
% x2=[0 x(1:end-1)];
% figure; stem(n,x2),title('x[n-1]')

% n=0:19;
% x1 = cos(3*pi/5*n+pi/2);
% stem(n,x1)
% 
% x2 =sin(pi/5*n-pi/4);
% figure;
% stem(n,x2)
% n =0:27;
% x=exp(j*3*pi/7*n);
% 
% %Gercek kısım
% gercek=real(x);
% sanal=imag(x);
% 
% %Genlik ,Faz
% genlik=abs(x);
% faz=angle(x);
% 
% subplot(221),stem(n,gercek),title('Gercek');
% subplot(222),stem(n,sanal),title('Sanal');
% subplot(223),stem(n,genlik),title('genlik');
% subplot(224),stem(n,faz),title('Faz');

%%  Filtre komutu
% y[n]-0.5y[n-1]=x[n] LTI
% dirac_n=[0 1 0 0 0 0 0 0]
% y=[0]
% n=[-1:6]
% a=[1 -0.5];
% b=[1]
% y=filter(b,a,dirac_n);
% stem(n,y,'rx')


%%
%%
clc; clear all
n = 0:32; % n= 0,1,2,...,15,16
w0 = pi/8;
w1 = w0 - 2*pi % = 15*pi/8;
w2 = w0 + 2*pi % = 17*pi/8;
w3 = w0 + 4*pi
for i=1:length(n)
x1(i) = cos(w0*n(i));
x2(i) = cos(w1*n(i));
x3(i) = cos(w2*n(i));
x4(i) = cos(w3*n(i));
end
k = 4 ; % grafik sayısı
subplot(k,1,1)
plot(n,x1,'ko')
grid on
subplot(k,1,2)
plot(n,x2,'bo')
grid on
subplot(k,1,3)
plot(n,x3,'ro')
grid on
subplot(k,1,4)
plot(n,x4,'mo')
grid on








%%

