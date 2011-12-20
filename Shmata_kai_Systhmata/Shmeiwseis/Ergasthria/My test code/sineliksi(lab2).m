%% Na kanete th sineliksi twn dio akolouthwn simatwn:
% x(n) = y[n]=(1/2)^|n|  gia n=-10:10
% y(n) = u(n)-u(n-4)     gia n= -20:20
%% Ylopoihsh
clear all;
close all;
clc;
%% Dhmiourgia vasikwn shmatwn
% dhmiourgia x(n):
n1=[-10:10];
x = (1/2).^abs(n1);
X = length(x);
figure()
stem(n1,x);
title('x(n)');
% dhmiourgia y(n) :
n2=[-20:20];
y1=(n2>=0);
y2=(n2>=4);
y=y1-y2 ;
Y=length(y);
figure()
stem(n2,y);
title('y(n)');
%% Syneliksh twn dyo shmatwn me thn conv()
% briskoume ta oria ths sinelikshs:
M1 = n1(1);
M2 = n2(1);
N1 = n1(end);
N2 = n2(end);
L=[M1+M2:N1+N2];
%dhmiourgoume th sineliksi kai thn anaparastoume:
C1=conv(x,y);
figure();
stem(L,C1);
title('Sineliksi mesw ths conv()');
%% Sineliksi twn dio shmatwn me kataskeuh
yz=[y(end:-1:1)];   % antistrefoume to shma y(n)
xz=[zeros(1,Y-1) x zeros(1,Y-1)];
for k=1:X+Y-1
    C2(k)=sum(xz.*[zeros(1,(k-1)) yz zeros(1,(X+Y-k-1))]);
end
figure();
stem(L,C2);
title('Sineliksi me kataskeuh')

figure();
stem(L,C1);
hold on;
stem(L,C2,'r');
hold off;
grid on;
title('apodiksh oti oi sinelikseis einai oi idies');
%% end
