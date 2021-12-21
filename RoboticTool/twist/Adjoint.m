% author: shaohe du
% email: dushaohe_hit@163.com
%
% AdT = | R   0|
%       |[p]R R|
% T = |R P|
%     |0 1|
function [AdT] = Adjoint(T)
[R, p] = TransToRp(T);
AdT = [R, zeros(3); VecToSo3(p), R];
end

