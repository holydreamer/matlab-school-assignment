function secant()
%���߷�

s=input('�������x�ĺ������ʽ','s');
f=inline(s,'x');
%����f=f(x)����


x0=input('���������ʼֵx0=');
x1=input('���������ʼֵx1=');
k=input('����ͣ��׼��|x1-x0|<=k��k=');
m=0;
% N=input('��������������N=');
%��ʼֵ����������

t1=now;
while abs(x1-x0)>k
   
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    x0=x1;
    x1=x2;
    m=m+1;
%   if m>N
%      disp(['�������Ԥ���������' num2str(N)]);
%      break;
%   end

end
t2=now;

x=x1;
t=t2-t1;%��¼ʱ��
n=input('�������ս�x����ʾλ��');
disp(['���ս�Ϊx=' num2str(x,n)]);
disp(['��������m=' num2str(m)]);
disp(['����ʱ��t=' num2str(second(t)) 's']);

end