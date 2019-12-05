function [A,a,b]=matrix(n)
a=randi([-1000000 1000000],n,1);
a=transpose(a);
b=ones(n-1,1);
A=zeros(n,n);
     for i=1:n
         a=randi([-1000000 1000000],1,n);
         A(i,1:n)=a(1:n);
     end
end