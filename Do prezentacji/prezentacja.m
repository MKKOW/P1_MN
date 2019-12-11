disp('PREZENTACJA ZMODYFIKOWANEJ METODY DOOLITTLE ROZWI¥ZYWANIA UK£ADU XA=B')
disp('TEST DLA A BÊD¥CA MACIERZ¥ HILBERTA I B BÊDAC¥ MACIERZ¥ HILBERTA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=hilb(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end
disp('TEST DLA A BÊD¥CA MACIERZ¥ WILKINSONA I B BÊDAC¥ MACIERZ¥ HILBERTA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=wilkinson(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end
disp('TEST DLA A BÊD¥CA MACIERZ¥ MAGICZN¥ I B BÊDAC¥ MACIERZ¥ HIBLERTA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=magic(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end
disp('TEST DLA A BÊD¥CA MACIERZ¥ HILBERTA I B BÊDAC¥ MACIERZ¥ WILKONSONA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=hilb(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end
disp('TEST DLA A BÊD¥CA MACIERZ¥ WILKINSONA I B BÊDAC¥ MACIERZ¥ WILKONSONA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=wilkinson(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end
disp('TEST DLA A BÊD¥CA MACIERZ¥ MAGICZN¥ I B BÊDAC¥ MACIERZ¥ WILKONSONA')
for n=3:2:11
    disp(['n= ', num2str(n)]);
    A=magic(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
end