% author: shaohe du
% email: dushaohe_hit@163.com
%
% expc3 = w * theta
function [omghat, theta] = AxisAng3(expc3)
theta = norm(expc3);
omghat = expc3 / theta;
end

