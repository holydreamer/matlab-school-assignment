function zero_point()
%ZERO_POINT ѡ��ͬ�����󷽳����

clear;
clc;
%��ʼ��

method=input('ѡ�񷽷���1������ַ���2����ţ�ٷ���3�����ţ�ٷ���4������߷���5����steffenson��');
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
        disp('��ѡ��12345����');
end


end



