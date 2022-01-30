clc 
clear

syms l theta phi psi

T1 =  T_dh([0,phi,0,0]) ;
T2 =  T_dh([0,0,0,-pi/2]) ;
T3 = T_dh([0,-pi/2,0,0]) ;

T4 = T_dh([0,theta/2,0,0]) ;
T5 = T_dh([0,0,l*sin(theta/2)/theta,0]) ;
T6 = T_dh([0,0,l*sin(theta/2)/theta,0]) ;
T7 = T_dh([0,-theta/2,0,0]) ;

T8 = T_dh([0,pi/2,0,pi/2]) ;
T9 = T_dh([0,pi/2,0,pi/2]) ;
T10 = T_dh([0,psi,0,0]) ;


T01 = T1 ;
T02 = T01 * T2 ;
T03 = T02 * T3 ;
T04 = T03 * T4 ;
T05 = T04 * T5 ;
T06 = T05 * T6 ;
T07 = T06 * T7 ;
T08 = T07 * T8 ;
T09 = T08 * T9 ;
T010 = T09 * T10 ;

f1 = matlabFunction(T01,'Vars',[l,theta,phi,psi]);
f2 = matlabFunction(T02,'Vars',[l,theta,phi,psi]);
f3 = matlabFunction(T03,'Vars',[l,theta,phi,psi]);
f4 = matlabFunction(T04,'Vars',[l,theta,phi,psi]);
f5 = matlabFunction(T05,'Vars',[l,theta,phi,psi]);
f6 = matlabFunction(T06,'Vars',[l,theta,phi,psi]);
f7 = matlabFunction(T07,'Vars',[l,theta,phi,psi]);
f8 = matlabFunction(T08,'Vars',[l,theta,phi,psi]);
f9 = matlabFunction(T09,'Vars',[l,theta,phi,psi]);
f10 = matlabFunction(T010,'Vars',[l,theta,phi,psi]);

a = 10
b = 1
c = 1
d = 0.5

figure(1)
hold on
axis equal

pbaspect([1 1 1])
sdrplot(eye(4))
sdrplot(f1(a,b,c,d))
sdrplot(f2(a,b,c,d))
sdrplot(f3(a,b,c,d))
sdrplot(f4(a,b,c,d))
sdrplot(f5(a,b,c,d))
sdrplot(f6(a,b,c,d))
sdrplot(f7(a,b,c,d))
sdrplot(f8(a,b,c,d))
sdrplot(f9(a,b,c,d))
sdrplot(f10(a,b,c,d))
% for i = 0:0.1:a
%     T = f4(i,b,c,d);
%     p = T(1:3,4)
%     plot3(p(1),p(2),p(3),'MarkerSize',10)
% end