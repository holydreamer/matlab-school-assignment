function dichotomy()
%���ַ�

s=input('�������x�ĺ������ʽ','s');
f=inline(s,'x');
%����f=f(x)����

a=input('����������˵�a=');
b=input('���������Ҷ˵�b=');
k=input('����ͣ��׼��|x1-x0|<=k��k=');
m=0;
%��ʼֵ����������

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
   m=m+1;%��¼��������
end
%�㷨����
t2=now;

t1=t2-t1;%��¼ʱ��
x=c;
n=input('�������ս�x����ʾλ��');
disp(['���ս�Ϊx=' num2str(x,n)]);
disp(['��������m=' num2str(m)]);
disp(['����ʱ��t=' num2str(second(t1)) 's']);


end