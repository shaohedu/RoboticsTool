% author: shaohe du
% email: dushaohe_hit@163.com
%
addpath('twist');
pi = 3.1415926;
q = [0, 2, 0]';
w = [0, 0, 1]';
h = 0;
p = [2, 2, 0]';

theta = pi / 2;
w = w / norm(w)
wx = VecToSo3(w)
w = So3ToVec(wx)
wx2 = wx * wx
wx3 = wx * wx * wx
wx4 = wx2 * wx2

[w, theta] = AxisAng3(w * theta)
R = MatrixExp3(VecToSo3(w) * theta)
wxtheta = MatrixLog3(R)
T = RpToTrans(R, p)
[R, p] = TransToRp(T)

adt = Adjoint(T);
s = ScrewToAxis6(q, w, h)
S = VecTose3(s)
V = se3ToVec(S * theta)
[S, theta] = AxisAng6(V)
sx = VecTose3(S * theta)
T = MatrixExp6(sx)
sx = MatrixLog6(T)



