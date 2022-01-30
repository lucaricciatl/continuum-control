clc
clear

%%


figure (3)

hold on 
axis equal
grid on

xlabel('X') 
ylabel('Y') 
zlabel('Z') 
set(gca,'DataAspectRatio',[1 1 1])

L = 2;
h = 0;


P = [5,0,15] ;   % you center point 
L1 = [2,20,2] ;  % your cube dimensions 
O = P-L1/2 ;       % Get the origin of cube so that P is at center 
plotcube(L1,O,.4,[1 0 0]);   % use function plotcube 
hold on
plot3(P(1),P(2),P(3),'*k')






N1 = 8 ;
N2 = 8 ;

varphi1_t = 0 ; %0.4 0.4
varphi2_t = 0 ;%0 0 0
eps1_t = 0 ;%-1.2
eps2_t = -2.4;%0 -2 -4
ni1_t = 0 ;%0.5 0.5
ni2_t = 0 ;%-2 0 1


varphi1 = varphi1_t / N1 ;
varphi2 = varphi2_t / N2 ;
eps2 = eps2_t / N1 ;
eps1 = eps1_t / N2 ;
ni1 = ni1_t / N1 ;
ni2 = ni2_t / N2 ;
xee = 0;
yee = 0;
zee = 0;


for i = 1:N1
    Tc = T_curve_tension([L,ni1,eps1,varphi1]);
    Tt = Ttr([0,0,h/2]) ;
    T1{i} = Tt * Tc * Tt;
end

for i = 1:N2
    Tc = T_curve_tension([L,ni2,eps2,varphi2]);
    Tt = Ttr([0,0,h/2]) ;
    T2{i} = Tt * Tc * Tt;
end

T00 = eye(4);
T01 = T1{1};
T02 = T01 * T1{2};
T03 = T02 * T1{3};
T04 = T03 * T1{4};
T05 = T04 * T1{5};
T06 = T05 * T1{6};
T07 = T06 * T1{7};
T08 = T07 * T1{8};
T09 = T08 * T2{1};
T10 = T09 * T2{2};
T11 = T10 * T2{3};
T12 = T11 * T2{4};
T13 = T12 * T2{5};
T14 = T13 * T2{6};
T15 = T14 * T2{7};
T16 = T15 * T2{8};

sdrplot(T00)
sdrplot(T01)
sdrplot(T02)
sdrplot(T03)
sdrplot(T04)
sdrplot(T05)
sdrplot(T06)
sdrplot(T07)
sdrplot(T08)
sdrplot(T09)
sdrplot(T10)
sdrplot(T11)
sdrplot(T12)
sdrplot(T13)
sdrplot(T14)
sdrplot(T15)
sdrplot(T16)
