function d=detmd(A)
%Oblicza wyznacznik macierzy A korzystaj�c z rozk�adu zmodyfikowan� metod�
%Doolittle'a
%d=detmd(A)
    if nargin<1
        error('Not enough input arguments.');
    end
    if nargin>1
        error('Too many input arguments.');
    end
    if size(A,1)~=size(A,2)
        error('Matrix must be square.');
    end
    [U,~]=mdoolittle(A);
    d=det(U);
end