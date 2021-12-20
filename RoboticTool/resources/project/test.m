floder = '/Users/dushaohe/MATLAB/projects/RoboticTool/resources/project/twist';
addpath(floder);
omg = [1, 2, 3];
a = VecToSo3(omg);
omg = So3ToVec(a);
[a, b] = AxisAng3(omg);
omgx = [0, -0.5, 0.866; 0.5, 0, 0; -0.866, 0, 0];
theta = 30 / 180 * 3.14;
omgThata = omgx * theta;
R = MatrixExp3(omgThata);
MatrixLog3(R);
p = [1, 2, 3]'
[R, p];
T = RpToTrans(R, p)
[R, p] = TransToRp(T)