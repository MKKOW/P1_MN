function [Ai]=invmd(A)
%Funkcja wyznacza odwrotnoœæ macierzy korzystaj¹c ze zmodyfikowanej
%metody Doolittle'a
%A^(-1)=invmd(A)
    if nargin<1
        error('Not enough input arguments.');
    end
    if nargin>1
        error('Too many input arguments.');
    end
    if abs(detmd(A)) < eps
        error('Matrix is singular to working precision.');
    end
    if size(A,1)~=size(A,2)
        error('Matrix must be square.');
    end
    
    [U,L]=mdoolittle(A);
    Ui=zeros(size(A));
    Li=zeros(size(A));
    n=size(A,1);

    %Odwracanie L
    for i=1:n
        if abs(L(i,i))<eps
            error('Division by zero!');
        end
       Li(i,i)=1/L(i,i);
       Li(i,1:(i-1))=(-L(i,1:(i-1))*Li(1:(i-1),1:(i-1)))/L(i,i);
    end
    %Odwracanie U
    for j=n:(-1):1
        if abs(U(j,j))<eps
            error('Division by zero!');
        end
        Ui(j,j)=1/U(j,j);
        Ui(j,(j+1):n)=(-U(j,(j+1):n)*Ui((j+1):n,(j+1):n))/U(j,j);
    end
    Ai=Li*Ui;
end
