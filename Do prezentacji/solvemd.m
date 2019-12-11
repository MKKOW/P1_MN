function [X]=solvemd(A,B)
%Funkcja rozwi�zuje uk�ad XA=B zmodyfikowan� metod� Doolittle'a
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
    %Rozwi�zywanie Y*L=B
    Y=zeros(size(B));
    for j=n:(-1):1
        Y(1:n,j)=B(1:n,j)-Y(1:n,(j+1):n)*L((j+1):n,j);
    end
    %Rozwi�zywanie X*U=Y
    X=zeros(size(B));
    for i=1:n
        if abs(U(i,i))<eps
            error('Division by zero!')
        end
        X(1:n,i)=(Y(1:n,i)-X(1:n,1:(i-1))*U(1:(i-1),i))/U(i,i);
    end
end