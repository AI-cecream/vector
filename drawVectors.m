function output = drawVectors(p1, p2, opt, handleObj)
%DRAWVECTORS Summary of this function goes here
%   Detailed explanation goes here

p = [0 0 0; 0 0 0];
p1_o = p1(2,:)-p1(1,:); % move to origin
p2_o = p2(2,:)-p2(1,:); % move to origin
switch opt
    case 1 % +
        p(2,:) = p1_o + p2_o;
    case 2 % -
        p(2,:) = p1_o - p2_o;
    case 3 % ¡¤
        np = dot(p1_o, p2_o);
        disp(np);
    case 4 % ¡Á
        p(2,:) = cross(p1_o, p2_o);
    case 5 % animation
        drawVecAnimation(p1_o, p2_o, handleObj);
        return;
end
cla(handleObj);
axes(handleObj);
minX = min([min([p(:,1) p1(:,1) p2(:,1)]) 0]);
minY = min([min([p(:,2) p1(:,2) p2(:,2)]) 0]);
minZ = min([min([p(:,3) p1(:,3) p2(:,3)]) 0]);
maxX = max(max([p(:,1) p1(:,1) p2(:,1)]))+1;
maxY = max(max([p(:,2) p1(:,2) p2(:,2)]))+1;
maxZ = max(max([p(:,3) p1(:,3) p2(:,3)]))+1;
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
if any(p1_o) == 1
    arrow3(p1(1,:),p1(2,:),'2.5s',1.5,[],0);
    text(p1(2,1),p1(2,2),p1(2,3),'\bfvec1');
end
if any(p2_o) == 1
    arrow3(p2(1,:),p2(2,:),'2.5s',1.5,[],0);
    text(p2(2,1),p2(2,2),p2(2,3),'\bfvec2');
end
if any(p(2,:)) == 1
    arrow3(p(1,:),p(2,:),'2.5s',1.5,[],0);
    text(p(2,1),p(2,2),p(2,3),'\bfvecResult');
end
% hold off, axis off, camlight left
grid on

