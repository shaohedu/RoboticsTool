function [omg] = So3ToVec(so3mat)
%ROTINV 此处显示有关此函数的摘要
%   此处显示详细说明
w1 = so3mat(3, 2);
w2 = so3mat(1, 3);
w3 = so3mat(2, 1);
omg = [w1, w2, w3];
end
