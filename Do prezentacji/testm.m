function [con,ed,er,wstab,wpopr,det_md,det_,det_error,det_relative_error]=testm(A,B,p)
    if nargin~=3
        p=2;
    end
    con=condmd(A,p);
    ed=edec(A,p);
    er=erel(A,B,p);
    wstab=wspstab(A,B,p);
    wpopr=wsppopr(A,B,p);
    det_md=detmd(A);
    det_=det(A);
    det_error=abs(det_md-det_);
     if abs(det_)<eps
         warning('Matrix is singular to working precision.');
     end
        det_relative_error=abs((det_md-det_)/det_);
end