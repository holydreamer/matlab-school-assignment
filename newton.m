function newton()
%牛顿法

s=input('输入关于x的函数表达式','s');
f=inline(s,'x');
%创建f=f(x)函数
syms y;
dfy=diff(f(y));
s1=char(dfy);
df=inline(s1,'y');
%创建函数f=f(x)的导函数df

x0=input('输入迭代初始值x0=');
k=input('输入停机准侧|x1-x0|<=k的k=');
% N=input('设置最大迭代次数N=');
xt=x0-1;%前一次x0
m=0;
%初始值及参数输入

t1=now;
while abs(x0-xt)>k
    xt=x0;%记录上一次x0
    if df(x0)==0
        disp('该法失效');
        break
    else
        x1=x0-f(x0)/df(x0);
        x0=x1;
    end
    m=m+1;
%     if m>N
%         disp(['超过最大预设迭代次数' num2str(N)]);
%         break;
%     end
end
t2=now;

x=x0;
t=t2-t1;%记录时间
n=input('输入最终解x的显示位数');
disp(['最终解为x=' num2str(x,n)]);
disp(['迭代次数m=' num2str(m)]);
disp(['运算时间t=' num2str(second(t)) 's']);


end

