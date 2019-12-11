function [U,L]=mdoolittle(A)
%Wyznacza rozk³ad UL maicerzy A zmodyfikowan¹ metod¹ Doolittle'a
%Gdy det(A)=0 to metoda nie zadzia³a
%[U,L]=mdoolittle(A)
   if nargin<1
        error('Not enough input arguments.');
    end
    if nargin>1
        error('Too many input arguments.');
    end
    if size(A,1)~=size(A,2)
        error('Matrix must be square.');
    end
    U=zeros(size(A));
    L=zeros(size(A));
    n=size(A,1);
    for j=n:-1:1
        U(1:j,j)=A(1:j,j)-U(1:j,(j+1):n)*L((j+1):n,j);
        if abs(U(j,j))<eps
            error('Division by zero!');
        end
        L(j,1:j)=(A(j,1:j)-U(j,(j+1):n)*L((j+1):n,1:j))./U(j,j);
    end
end