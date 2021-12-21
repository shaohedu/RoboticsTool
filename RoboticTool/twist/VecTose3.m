% author: shaohe du
% email: dushaohe_hit@163.com
%
% V = [w; v]   
% se3mat = [s] = |[w], v|
%                | 0 , 0| 
function [se3mat] = VecTose3(V)
w = [V(1, 1), V(2, 1), V(3, 1)]';
v = [V(4, 1), V(5, 1), V(6, 1)]';
se3mat = [VecToSo3(w), v; 0, 0, 0, 0];
end

