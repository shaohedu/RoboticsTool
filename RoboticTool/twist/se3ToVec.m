% author: shaohe du
% email: dushaohe_hit@163.com
%
% se3mat = [s] * theta = |[w]* theta v * theta|
%                        |      0       0     | 
% V = [w * theta; v * theta]
function [Vec] = se3ToVec(se3mat)
cells = mat2cell(se3mat, [3, 1], [3, 1]);
w = So3ToVec(cell2mat(cells(1, 1)));
v = cell2mat(cells(1, 2));
Vec = [w; v];
end

