clear all;
%% Orismos Metablhtwn 
a = 5;
data_1 = 7;
Data_1 = 4;                       % Diaforetiko apo to data_1 --> Diakrish pezwn - kafalaiwn
%% Orismos Dianysmatwn 
K = [1 4 9];            
L = [1:5];                        %Dianysma me pente stoixeia apo to 1 ews to 5, me bhma ay3hshs=1
M = [0:2:12];                     %Dianysma me epta stoixeia apo to 0 ews to 12, me bhma ay3hshs=2
T = [1 4 6; 2 5 7; 3 8 12];       %Pinakas me diastaseis 3x3
H = [2 4.5 7; 12 4 23; 0 3 9];    %Pinakas me diastaseis 3x3
t = pi;                           %O ari8mos pi = 3,14...
l = 1;
%l = input('Dwste to l ');        %Entolh eisodoy apo plhktrologio
Mon = ones(3,2);                  %Dhmioyrgia pinaka diastasewn 3x2 me monades
Mhd = zeros(2,6);                 %Dhmioyrgia pinaka diastasewn 3x2 me mhdenika
Z = eye(3);                       %Dhmioyrgia monadiaioy pinaka 3x3

%% Basikes Pra3eis
aa = a+5;
w = a + data_1;
T1 = T*Z;                         %Pollaplasiasmos pinakwn (Grammikh algebra)
T2 = T.*Z;                        %Pollaplasiasmos stoixeio me stoixeio
T4 = T.*H;                        %Pollaplasiasmos stoixeio me stoixeio
TI = inv(T);                      %Antistrofos pinakas
T2 = T^2;                         % T*T
TAN = T';                         % Anastrofos

mk = length(K);                   % Mnhkos toy K (Posa stoixeioa exei to dianysma)
ms = size(T);                     % Diastaseis toy pinaka

s = sum(T);                       % A8roisma twn sthlwn
ss = sum(T,2);                    % A8roisma twn grammwn


%% Pragramamtismos
%%%%%%%%%%%% A. Domh epiloghs %%%%%%%%%%%%%%
if l < 0
    disp('l<0');
elseif l == 0
    disp('l = 0');
else
    disp('l>0');
end

%%%%%%%%%%%% B. Domh Epanalhpshs %%%%%%%%%%%%%%
%Dhmioyrgia pianaka 10x2
for  p = 1:10
    for v = 1:2
        E(p,v) = p/v;
    end
end

for tt = 1:10000
    K1(tt) = tt^2;
end

%% Basika Shmata
n = [-10:9];                %Diasthma xronoy (deigmatwn)
%1. Monadiaio Bhma (u)
%%1os Tropos
for k = 1:length(n)
    if n(k)<0
        u1(k) = 0;
    else
        u1(k) = 1;
    end
end
stem(n,u1);
%%2os tropos
u2 = (n>=0);                %Opoy isxyei h syn8hkh bazei 1
figure(2)
stem(n,u2)          
%ka8ysterhmenh monadiaia
u3 = (n>=4);
figure(3)
stem(n,u3);

%2. Monadiaia Klimaka
for k = 1:length(n)
    if n(k)<0
        r(k) = 0;
    else
        r(k) = n(k);
    end
end
figure(4)
stem(n,r);

%3. Ek8etiko
e = exp(abs(n));          %e^|n|
a1 = 5;
a2 = 0.3;
ee1 = a1.^(abs(n));       %abs() --> Apolyth timh
ee2 = a2.^(abs(n));
figure(5)
stem(n,e);
figure(6)
stem(n,ee1);
figure(7)
stem(n,ee2);
%% Energeia --> Na bre8ei h energeia twn ee1 kai ee2
%%1os tropos
E1=0;
E2=0;
for t=1:length(n)
    E1 = E1 + (abs(ee1(t)))^2;
    E2 = E2 + (abs(ee2(t)))^2;
end
%%2os tropos
E11 = sum(ee1.^2);
E22 = sum(ee2.^2);

n1 = [-100:99];             %Neo diasthma
eee2 = a2.^(abs(n));
EE22 = sum(abs(ee2).^2);      
