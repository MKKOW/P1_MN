function [X]=solvemd(A,B)
%Funkcja rozwiązuje układ XA=B zmodyfikowaną metodą Doolittle'a
%X=solvemd(A,B)
    if nargin<2
        error('Not enough input arguments.');
    end
    if nargin>2
        error('Too many input arguments.');
    end
    %X=B*invmd(A); tak nam nie wolno
    [U,L]=mdoolittle(A);
    n=size(A,1);
    %Rozwiązywanie U*Y=B, backward substitution
    Y=zeros(size(B));
    for j=n:(-1):1
        Y(j,1:n)=(B(j,1:n)-U(j,j+1:n)*Y(j+1:n,1:n))/U(j,j);
    end
    %Rozwiązywanie L*X=Y, forward substitution
    X=zeros(size(B));
    for i=1:n
        X(i,1:n)=(Y(i,1:n)-L(i,1:(i-1))*Y(1:(i-1),1:n))/L(i,i);
    end
end