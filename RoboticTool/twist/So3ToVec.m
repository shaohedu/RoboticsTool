% author: shaohe du
% email: dushaohe_hit@163.com
%
function [omg] = So3ToVec(so3mat)
w1 = so3mat(3, 2);
w2 = so3mat(1, 3);
w3 = so3mat(2, 1);
omg = [w1, w2, w3]';
end
