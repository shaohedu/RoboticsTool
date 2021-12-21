% author: shaohe du
% email: dushaohe_hit@163.com
%
% S = |        s      |
%     | -s x q + h * s|
% s 为单位向量
function [S] = ScrewToAxis6(q, s, h)
S = [s; cross(-s, q) + h * s];
end

