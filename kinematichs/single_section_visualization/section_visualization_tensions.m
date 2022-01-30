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

l = 80
k = 0.05
b = -0.1
t = 0.2

q = [l k b t] ;
T = @(q) Tx(pi/2) *  T_curve_tension(q) * Tx(pi/2) * Ty(pi/2) ;

for s = 0:0.2:8
    q_s = [s k b t];
    sdrplot(T(q_s));
end


