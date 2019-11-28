function [X]=solvemd(A,B)
%Funkcja rozwi�zuje uk�ad XA=B zmodyfikowan� metod� Doolittle'a
%X=solvemd(A,B)
    if nargin<2
        error('Not enough input arguments.');
    end
    if nargin>2
        error('Too many input arguments.');
    end
    X=B*invmd(A);
end