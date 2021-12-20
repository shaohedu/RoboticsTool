function [so3mat] = MatrixLog3(R)
pi = 3.14;
trR = R(1, 1) + R(2, 2) + R(3, 3)
if (R == eye(3))
    theta = 0;
    w = [NaN, NaN, NaN];
    so3mat = VecToSo3(w) * theta;
else 
    if (trR == -1)
        theta = pi;
        w = [R(1, 3), R(2, 3), 1 + R(3, 3)] / (2 * (1 + R(3, 3)))^0.5;
        so3mat = VecToSo3(w) * theta;
    else
        theta = acos(0.5 * (trR - 1))
        if (theta > pi)
            theta = 2 * pi - theta;
        end
        if (theta < -pi)
            theta = 2 * pi + theta;
        end
        wx = (R - R') / (2 * sin(theta))
        so3mat = wx * theta;
    end
end
end

