% author: shaohe du
% email: dushaohe_hit@163.com
%
% expc6 = S * theta
function [S, theta] = AxisAng6(expc6)
if expc6(1:3) == 0
   theta = norm(expc6(4:6));
else
    theta = norm(expc6(1:3));   
end
S = expc6 / theta; 
end

