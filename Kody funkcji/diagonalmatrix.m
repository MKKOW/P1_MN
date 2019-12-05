function A=diagonalmatrix(n)
    k=3;
    A=zeros(n);
    for i=1:k
        x=randi([-1000000 1000000], n-i+1,1);
        A(:,:,i)=diag(x,i-1);
        A(:,:,k+1+i)=diag(x,-i+1);
        A(:,:,1)=A(:,:,1)+A(:,:,i)+A(:,:,k+1+i);
    end
    A=A(:,:,1);
end