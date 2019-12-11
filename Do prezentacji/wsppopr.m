function  w=wsppopr(A,B,p)
%Funkcja wyznacza wspó³czynnik poprawnoœci (korzystaj¹c z p normy)
%rozwi¹zania uk³adu XA=B zmodyfikowan¹ metod¹ doolitle'a
%w=wsppopr(A,B,p)
    if nargin<2
        error('Not enough input arguments.');
    end
    if nargin==2
        p=2;
    end
    if nargin>3
        error('Too many input arguments.');
    end
    if size(A,1)~=size(A,2)||size(B,1)~=size(B,2)
        error('Matrix must be square');
    end
    X=solvemd(A,B);
    if abs((norm(A,p)*norm(X,p)))<eps
        error('Divison by zero!');
    end
    w=norm(B-X*A,p)/(norm(A,p)*norm(X,p));
end