function [R] = MatrixExp3(so3mat)
% input [w] * theta
w = So3ToVec(so3mat);
theta = norm(w);
wx = so3mat / theta;
R = eye(3) + sin(theta) * wx + (1 - cos(theta)) * wx * wx;
end