% author: shaohe du
% email: dushaohe_hit@163.com
%
function [R,p] = TransToRp(T)
cells = mat2cell(T, [3, 1], [3, 1]);
R = cell2mat(cells(1, 1));
p = cell2mat(cells(1, 2));
end

