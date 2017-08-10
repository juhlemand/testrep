clear all
close all

sphere
hold on
%axis off
colormap white
alpha(.3)
koor(:,1)=[1;1;-1;-1]/sqrt(3);
koor(:,2)=[1;-1;1;-1]/sqrt(3);
koor(:,3)=[1;-1;-1;1]/sqrt(3);

koor=koor*drejomz(45);
%koor=koor*drejomx(109/2); %rotate around x axis
koor=koor*drejomy(109/2); %rotate around y axis

DT = delaunayTriangulation(koor(:,1),koor(:,2),koor(:,3));
tetramesh(DT);
xlabel('x')

function [rz]=drejomz(t)
%drej om z
rz=[cosd(t) -sind(t) 0; sind(t) cosd(t) 0; 0 0 1];
end
%drej om y
function [ry]=drejomy(t)
ry=[1 0 0; 0 cosd(t) -sind(t); 0 sind(t) cosd(t)];
end
%drej om x
function [rx]=drejomx(t)
rx=[cosd(t) 0 sind(t); 0 1 0; -sind(t) 0 cosd(t)];
end
