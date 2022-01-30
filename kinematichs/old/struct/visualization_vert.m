clc
clear

s = 2 ; 
n = 8 ;

figure(1)
axis equal
hold on
grid on
daspect([1 1 1])

basemesh = stlread('vertebra_simplified.stl') ;
T0 =  eye(4)
mesh0 = trimesh_transofrm(basemesh,T0) ;
trisurf(mesh0,'FaceColor',[0,0,0],'EdgeColor',[0,0,0],'facealpha',0.1)


par = ones(4,s*n);
h = 5*ones(1,s*n);
l = 50;
lt = l*n;
q1 = [ l 0.05/lt 0.07/lt 10 ] ;
q2 = [ l -0.1/lt -0.1/lt -0.1 ];
qt = [q1 ; q2];

q = zeros(length( qt ) , s * n) ;

for j = 1 : s*n
    f = ceil(j / n);
    
    q(:,j) = par(:,j) .* qt(f,:)' ; 
end


T_s = zeros(4,4,s*n);

for i = 1 : (s*n)
    T_s(:,:,i) =  Ttr([0 0 h(i)/2]) * T_curve_angles_forsym( q(:,i) ) * Ttr([0 0 h(i)/2]);
end

T_m(:,:,1) = eye(4) ;

for i = 1 : s*n
    T_m(:,:,i+1) = T_m(:,:,i) * T_s(:,:,i) ;
    sdrplot(T_m(:,:,i+1))
    mesh1 = trimesh_transofrm(basemesh,T_m(:,:,i+1)*Ttr([0 0 -h(i)/2])) ;
    srf = trisurf(mesh1,'FaceColor',[0,0,0],'EdgeColor',[0,0,0],'facealpha',0.1) ;
end
