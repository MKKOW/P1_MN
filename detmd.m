function d=detmd(A)
%Oblicza wyznacznik macierzy A korzystaj¹c z rozk³adu zmodyfikowan¹ metod¹
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