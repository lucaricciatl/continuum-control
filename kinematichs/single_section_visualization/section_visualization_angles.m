clc
clear

%%

figure(1)
grid on

title('section sdr')
xlabel('X') 
ylabel('Y') 
zlabel('Z') 
set(gca,'DataAspectRatio',[1 1 1])

l = 10
theta = 0.2
phi = 0.2
psi = 1

q = [l theta phi psi] ;
T = @(q) T_curve_angles_pww(q) ;



for s = 0:0.1:l
    q_s = [s theta phi psi];
    sdrplot(T(q_s));
end