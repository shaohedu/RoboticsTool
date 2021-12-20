function [T] = RpToTrans(R,p)
T = [R, p]
T = [T; [0, 0, 0, 1]];
end

