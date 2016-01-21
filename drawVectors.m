function output = drawVectors(p1, p2, opt, handleObj)
%DRAWVECTORS Summary of this function goes here
%   Detailed explanation goes here

p = [0 0 0];
np = 0;
switch opt
    case 1 % +
        p = p1 + p2;
    case 2 % -
        p = p1 - p2;
    case 3 % ¡¤
        np = dot(p1, p2);
    case 4 % ¡Á
        p = cross(p1, p2);
    % case 5 % ¡¤&¡Á
end
cla(handleObj);
axes(handleObj);
minX = min([p(1) p1(1) p2(1) 0]);
minY = min([p(2) p1(2) p2(1) 0]);
minZ = min([p(3) p1(3) p2(3) 0]);
axis([minX max([p(1) p1(1) p2(1)])+1 ...
    minY max([p(2) p1(2) p2(2)])+1 ...
    minZ max([p(3) p1(3) p2(3)])+1]);
% pbaspect([2 1.5 1]), 
view(55,15);
hold on
% output = arrow3(zeros(3),diag([7,5,1]),'o');
if any(p1) == 1
    arrow3([0 0 0],p1,'2.5s',1.5,[],0);
end
if any(p2) == 1
    arrow3([0 0 0],p2,'2.5s',1.5,[],0);
end
if any(p) == 1
    arrow3([0 0 0],p,'2.5s',1.5,[],0);
end
grid on

