function e=edec(A,p)
%Funkcja wyznacza b��d rozk�adu macierzy A zmodyfikowan� metod� Doolittle'a
%korzystaj�c z p normy
%e=edec(A)
    if nargin<1
        error('Not enough input arguments.');
    end
    if nargin==1
        p=2;
    end
    if nargin>2
        error('Too many input arguments.');
    end
    if size(A,1)~=size(A,2)
        error('Matrix must be square');
    end
    [U,L]=mdoolittle(A);
    if abs(norm(A,p))<eps
            error('Division by zero!');
     end
    e=norm(A-U*L,p)/norm(A,p);
end