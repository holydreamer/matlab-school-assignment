function zero_point()
%ZERO_POINT 选择不同方法求方程零点

clear;
clc;
%初始化

method=input('选择方法：1代表二分法，2代表牛顿法，3代表简化牛顿法，4代表割线法，5代表steffenson法');
switch method
    case 1
        dichotomy();
    case 2
        newton();
    case 3
        simplified_newton();
    case 4
        secant();
    case 5
        steffenson();
    otherwise
        disp('请选择12345方法');
end


end



