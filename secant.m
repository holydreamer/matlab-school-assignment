function secant()
%割线法

s=input('输入关于x的函数表达式','s');
f=inline(s,'x');
%创建f=f(x)函数


x0=input('输入迭代初始值x0=');
x1=input('输入迭代初始值x1=');
k=input('输入停机准侧|x1-x0|<=k的k=');
m=0;
% N=input('设置最大迭代次数N=');
%初始值及参数输入

t1=now;
while abs(x1-x0)>k
   
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    x0=x1;
    x1=x2;
    m=m+1;
%   if m>N
%      disp(['超过最大预设迭代次数' num2str(N)]);
%      break;
%   end

end
t2=now;

x=x1;
t=t2-t1;%记录时间
n=input('输入最终解x的显示位数');
disp(['最终解为x=' num2str(x,n)]);
disp(['迭代次数m=' num2str(m)]);
disp(['运算时间t=' num2str(second(t)) 's']);

end