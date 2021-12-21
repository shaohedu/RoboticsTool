% author: shaohe du
% email: dushaohe_hit@163.com
%
% T = |R p|
%     |0 1|
% G^-1 = 
% I * (1 / theta) - 0.5 * [w] + (1 / theta - 0.5 * cot(0.5 * theta)) * [w]^2
% se3mat
% v = G^-1(theta) * p
% se3mat = [s] * theta = |[w]* theta v * theta|
%                        |      0       0     |
function [se3mat] = MatrixLog6(T)
cells = mat2cell(T, [3, 1], [3, 1]);
R = cell2mat(cells(1, 1));
p = cell2mat(cells(1, 2));
if R == eye(3)
    w = [0, 0, 0];
    v = p / norm(p);
else
    [wHat, theta] = AxisAng3(MatrixLog3(R));
    w = So3ToVec(wHat);
    v = invG(w, theta) * p;
end
se3mat = [VecToSo3(w) * theta, v * theta; [0, 0, 0, 0]];
end

function [invG] = invG(w, theta)
wx = VecToSo3(w);
invG = eye(3) * (1 / theta) - 0.5 * wx + (1 / theta - 0.5 * cot(0.5 * theta)) * wx^2;
end

