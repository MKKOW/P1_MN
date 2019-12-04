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
        L(j,1:j)=(A(j,1:j)-U(j,(j+1):n)*L((j+1):n,1:j))./U(j,j);
       % Gdy "wyskoczy" u=0 na przek¹tnej to ta metoda nie zadzia³a
       % poni¿ej proponowana modyfkacja
       % if U(j,j)~=0
       %    L(j,1:j)=(A(j,1:j)-U(j,(j+1):n)*L((j+1):n,1:j))./U(j,j);
       % else
       %    L(j,j)=1;
       %    L(j,1:(j-1))=(A(j,1:(j-1))-U(j,(j+1):n)*L((j+1):n,1:(j-1)));
       %end
    end
end