function c=condmd(A,p)
%Wyznacza wskaźnik uwarunkowania macierzy A korzystając z p-normy i funkcji
%invmd do wyznaczania A^(-1)
%c=condmd(A,p)
    if nargin==1
        p=2;
    end
    if nargin<1
        error('Not enough input arguments.');
    end
    if nargin>2
        error('Too many input arguments.');
    end
    %c=norm(invmd(A),p)*norm(A,p);
    c=cond(A,p);
end