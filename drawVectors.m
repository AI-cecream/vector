function output = drawVectors(p1, p2, opt, handleObj)
%DRAWVECTORS Summary of this function goes here
%   Detailed explanation goes here

p = [0 0 0];
switch opt
    case 1 % +
        p = p1 + p2;
    case 2 % -
        p = p1 - p2;
    case 3 % ¡¤
        np = dot(p1, p2);
        disp(np);
    case 4 % ¡Á
        p = cross(p1, p2);
    case 5 % animation
        drawVecAnimation(p1, p2, handleObj);
        return;
end
cla(handleObj);
axes(handleObj);
minX = min([p(1) p1(1) p2(1) 0]);
minY = min([p(2) p1(2) p2(2) 0]);
minZ = min([p(3) p1(3) p2(3) 0]);
maxX = max([p(1) p1(1) p2(1)])+1;
maxY = max([p(2) p1(2) p2(2)])+1;
maxZ = max([p(3) p1(3) p2(3)])+1;
axis([minX maxX ...
    minY maxY ...
    minZ maxZ]);
pbaspect([2 1.5 1]);
view(55,15);
% daspect([1 1 1]);
% view([-70,15]);
% set(gca,'CameraViewAngle',8);
hold on
% arrow3(zeros(3), diag([maxX, maxY, maxZ]), 'o');
% text(maxX+0.1,0,0,'X');
% text(0,maxY+0.05,0,'Y');
% text(0,0,maxZ,'Z','VerticalAlignment','bottom',...
%   'HorizontalAlignment','center');
if any(p1) == 1
    arrow3([0 0 0],p1,'2.5s',1.5,[],0);
    text(p1(1),p1(2),p1(3),'\bfvec1');
end
if any(p2) == 1
    arrow3([0 0 0],p2,'2.5s',1.5,[],0);
    text(p2(1),p2(2),p2(3),'\bfvec2');
end
if any(p) == 1
    arrow3([0 0 0],p,'2.5s',1.5,[],0);
    text(p(1),p(2),p(3),'\bfvecResult');
    arrow3(repmat([p(1:2),0],4,1),...
        [0 p(2) 0;p(1) 0 0;p;0 0 0],'--o',0,0,0.5)
end
% hold off, axis off, camlight left
grid on

