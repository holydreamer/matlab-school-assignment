function newton()
%ţ�ٷ�

s=input('�������x�ĺ������ʽ','s');
f=inline(s,'x');
%����f=f(x)����
syms y;
dfy=diff(f(y));
s1=char(dfy);
df=inline(s1,'y');
%��������f=f(x)�ĵ�����df

x0=input('���������ʼֵx0=');
k=input('����ͣ��׼��|x1-x0|<=k��k=');
% N=input('��������������N=');
xt=x0-1;%ǰһ��x0
m=0;
%��ʼֵ����������

t1=now;
while abs(x0-xt)>k
    xt=x0;%��¼��һ��x0
    if df(x0)==0
        disp('�÷�ʧЧ');
        break
    else
        x1=x0-f(x0)/df(x0);
        x0=x1;
    end
    m=m+1;
%     if m>N
%         disp(['�������Ԥ���������' num2str(N)]);
%         break;
%     end
end
t2=now;

x=x0;
t=t2-t1;%��¼ʱ��
n=input('�������ս�x����ʾλ��');
disp(['���ս�Ϊx=' num2str(x,n)]);
disp(['��������m=' num2str(m)]);
disp(['����ʱ��t=' num2str(second(t)) 's']);


end

