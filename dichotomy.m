function dichotomy()
%二分法

s=input('输入关于x的函数表达式','s');
f=inline(s,'x');
%创建f=f(x)函数

a=input('输入区间左端点a=');
b=input('输入区间右端点b=');
k=input('输入停机准侧|x1-x0|<=k的k=');
m=0;
%初始值及参数输入

t1=now;
while abs(a-b)>k
   c=(a+b)/2;
   if f(c)==0
       break;
   else
       if f(a)*f(c)<0
           b=c;
       else
           a=c;
       end
   end
   m=m+1;%记录迭代次数
end
%算法主体
t2=now;

t1=t2-t1;%记录时间
x=c;
n=input('输入最终解x的显示位数');
disp(['最终解为x=' num2str(x,n)]);
disp(['迭代次数m=' num2str(m)]);
disp(['运算时间t=' num2str(second(t1)) 's']);


end