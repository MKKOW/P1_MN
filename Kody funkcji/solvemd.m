function [X]=solvemd(A,B)
%Funkcja rozwi¹zuje uk³ad XA=B zmodyfikowan¹ metod¹ Doolittle'a
%X=solvemd(A,B)
    if nargin<2
        error('Not enough input arguments.');
    end
    if nargin>2
        error('Too many input arguments.');
    end
    X=B*invmd(A);
end