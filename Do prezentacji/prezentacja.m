disp('PREZENTACJA ZMODYFIKOWANEJ METODY DOOLITTLE ROZWI�ZYWANIA UK�ADU XA=B')
disp('TEST DLA A B�D�CA MACIERZ� HILBERTA I B B�DAC� MACIERZ� HILBERTA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=hilb(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
    %disp(['\hline $', num2str(n), '$ & $', num2str(det_md), '$ & $',num2str(det_) ,'$ & $' num2str(det_error),'$ & $',num2str(det_relative_error),'$ \\']);
end
disp('TEST DLA A B�D�CA MACIERZ� WILKINSONA I B B�DAC� MACIERZ� HILBERTA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=wilkinson(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
    %disp(['\hline $', num2str(n), '$ & $', num2str(det_md), '$ & $',num2str(det_) ,'$ & $' num2str(det_error),'$ & $',num2str(det_relative_error),'$ \\']);
end
disp('TEST DLA A B�D�CA MACIERZ� MAGICZN� I B B�DAC� MACIERZ� HIBLERTA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=magic(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
    %disp(['\hline $', num2str(n), '$ & $', num2str(det_md), '$ & $',num2str(det_) ,'$ & $' num2str(det_error),'$ & $',num2str(det_relative_error),'$ \\']);
end
disp('TEST DLA A B�D�CA MACIERZ� HILBERTA I B B�DAC� MACIERZ� WILKONSONA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=hilb(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
end
disp('TEST DLA A B�D�CA MACIERZ� WILKINSONA I B B�DAC� MACIERZ� WILKONSONA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=wilkinson(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
end
disp('TEST DLA A B�D�CA MACIERZ� MAGICZN� I B B�DAC� MACIERZ� WILKONSONA')
for n=3:2:11
    %disp(['n= ', num2str(n)]);
    A=magic(n);
    B=hilb(n);
    format short e
    [cond,edec,erel,wspstab,wsppopr,det_md,det_,det_error,det_relative_error]=testm(A,B,2)
    %disp(['\hline $', num2str(n), '$ & $', num2str(cond), '$ & $',num2str(edec) ,'$ & $' num2str(erel),'$ & $',num2str(wspstab),'$ & $',num2str(wsppopr),'$ \\']);
end