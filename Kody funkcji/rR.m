function r=rR(A,p)
%r=rR(A,p)
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
    X=invmd(A);
    r=norm(A*X-eye(size(n)),p)/(norm(A,p)*norm(X,p));
end