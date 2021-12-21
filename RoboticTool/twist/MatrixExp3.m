% author: shaohe du
% email: dushaohe_hit@163.com
%
% so3mat = [w] * theta
function [R] = MatrixExp3(so3mat)
w = So3ToVec(so3mat);
theta = norm(w);
wx = so3mat / theta;
R = eye(3) + sin(theta) * wx + (1 - cos(theta)) * wx * wx;
end