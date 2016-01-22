function [ output_args ] = drawVecAnimation( vecM, vecH, handleObj )
%DRAWVECANIMATION Summary of this function goes here
%   Detailed explanation goes here

cla(handleObj);
axes(handleObj);
if any(vecM) ~= 1 || any(vecH) ~= 1
    return;
end
vecM = vecM / norm(vecM);
vecH = vecH / norm(vecH);
detM = cross(vecM, vecH);
% minX = min([vecM(1) vecH(1) 0]);
% minY = min([vecM(2) vecH(2) 0]);
% minZ = min([vecM(3) vecH(3) 0]);
% maxX = max([vecM(1) vecH(1)])+1;
% maxY = max([vecM(2) vecH(2)])+1;
% maxZ = max([vecM(3) vecH(3)])+1;
% axis([-maxX maxX ...
%     -maxY maxY ...
%     minZ maxZ]);
pbaspect([2 1.5 1]);
view(55,15);
hold on
if any(vecH) == 1
axis([-1 1 -1 1 0 1]);
arrow3([0 0 0],vecH,'2.5s',1.5,[],0);
% quiver3(0, 0, 0, vecH(1), vecH(2), vecH(3));
text(vecH(1),vecH(2),vecH(3),'\bfvecH');
end
grid on
nT = 2000; %650;
hArrow = quiver3(0,0,0,0,0,0);
hText = text(0,0,0,'');
for it=1:nT % while 1==1
%   detM = detM / norm(detM);
    delete(hArrow);
    delete(hText);
    if any(vecM) == 1
        axis([-1 1 -1 1 0 1]);
        hArrow = arrow3([0 0 0],vecM,'2.5s',1.5,[],0);
%         hArrow = quiver3(0, 0, 0, vecM(1), vecM(2), vecM(3));
        hText = text(vecM(1),vecM(2),vecM(3),'\bfvecM');
        drawnow;
    end
    vecM = vecM + detM/100;
    vecM = vecM / norm(vecM);
%   disp(vecM);
    detM = cross(vecM, vecH);
end
end

