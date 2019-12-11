function  w=wspstab(A,B,p)
%Funkcja wyznacza wsp�czynnik stabilno�ci (korzystaj�c z p normy)
%rozwi�zania uk�adu XA=B zmodyfikowan� metod� doolitle'a wzgl�dem 
%rozwi�zania X=B/A
%w=wspstab(A,B,p)
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
    Z=B/A;
    if abs(norm(Z,p)*condmd(A,p))<eps
        error('Divison by zero!')
    end
    w=norm(X-Z,p)/(norm(Z,p)*condmd(A,p));
end