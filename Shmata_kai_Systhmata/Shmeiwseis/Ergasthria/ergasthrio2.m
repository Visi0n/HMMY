clear all;
close all;
clc;

%% syneli3h
B = [-25:25];
X1 = (B>=4);            % Shma u[n-4]
X2 = (B>=7).*(B-7);     % Shma r[n-7]
X = X1+X2;              % Shma x[n]=u[n-4]+r[n-7]
stem(B,X1);
figure(2)
stem(B,X2);
figure(3)
stem(B,X);
Y = (1/2).^abs(B);      % Shma y[n]=(1/2)^|n|
figure(4)
stem(B,Y);

N = length(Y);          % Mhkos Toy Y

Xz = [zeros(1, N - 1) X zeros(1, N - 1)];  
% 
Ym = [Y(end:-1:1)];     % Y mirror
% 
% Oria
M1 = B(1);              % Mporei na einai diaforetika, edw tyxainei na einai ta idia.
M2 = B(1);
N1 = B(end);
N2 = B(end);

L = [M1+M2:N1+N2];      % Oria Syneli3hs gia to stem


for k=1:length(X) + length(Y) - 1
    Z1(k) = sum(Xz.* [zeros(1,(k-1)) Ym  zeros(1, (2*N-k-1))]); % Syneli3h me xrhsh orismoy
end
Z2 = conv(X,Y);         % Syneli3h me etoimh synarthsh matlab
figure(5)
stem(L,Z1)
figure(6)
stem(L,Z2)
xlabel ('Deigmata');
ylabel('Syneli3h Diakritoy');
title('Syneli3h Diakritoy Shmatos me Xrhsh ths conv()');
grid on

figure(7)
stem (B,X);
hold on;
stem(B,Y,'r');
hold off;

%% Synexes Shma
Ts=0.01;
K = [-15:Ts:15];
Y1 = (1/2).^abs(K);     
figure(8)
plot(K,Y1);
E1 = sum(abs(Y1).^2)*Ts 
E2 = 1/log(2)               % Exei ypologistei analytika sthn arxh toy kefalaiou 2

