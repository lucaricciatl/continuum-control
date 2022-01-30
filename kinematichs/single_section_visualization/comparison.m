l = 10
% k = 0.2
% b = 0.2
% t = 0.2
% 
% theta = sqrt( k^2 + b^2 ) ;
% phi = atan2(   k , b    ) ;
% psi = t  ;

theta = 0.2
phi = 0.2
psi = 0.2

k = theta * sin(phi)
b = theta * cos(phi)
t = psi


q = [l theta phi psi] ;
T = @(q) T_curve_angles(q) ;



for s = 0.99:0.1:l
    q_s = [s theta phi psi];
    sdrplot(T(q_s));
end

q = [l k b t] ;
T = @(q) T_curve_tension_forsym(q) ;

for s = 0:0.1:l
    q_s = [s k b t];
    sdrplot(T(q_s));
end


