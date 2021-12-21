% author: shaohe du
% email: dushaohe_hit@163.com
%
% e^([s] * theta) = |e^([w] * theta) G(theta) * v|
%                   |       0             1      |
% ||w|| = 1: G(theta) = I * theta + (1 - cos(theta)) * [w] + (theta - sin(theta)) * [w]^2
% ||w|| = 0: G(theta) = theta
% se3mat = [s] * theta = |[w]* theta v * theta|
%                        |      0       0     |
function [T] = MatrixExp6(se3mat)
V = se3ToVec(se3mat);
[s, theta] = AxisAng6(V);
w = s(1:3);
v = s(4:6);
R = MatrixExp3(VecToSo3(w) * theta);
if w == 0
    T = [eye(3), v * theta; [0, 0, 0, 1]];
else
    T = [R, G(w, theta) * v; [0, 0, 0, 1]];
end
end

function [v] = G(w, theta)
wx = VecToSo3(w);
v = eye(3) * theta + (1 - cos(theta)) * wx + (theta - sin(theta)) * wx^2;
end

