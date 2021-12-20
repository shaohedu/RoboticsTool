function [so3mat] = VecToSo3(omg)
w1 = omg(1);
w2 = omg(2);
w3 = omg(3);
so3mat = [0, -w3, w2; w3, 0, -w1; -w2, w1, 0];
end



