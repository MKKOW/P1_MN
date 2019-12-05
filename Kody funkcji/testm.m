function [con,ed,er,wstab,wpopr,Rr,Lr]=testm(A,B,p)
    if nargin~=3
        p=2;
    end
    con=condmd(A,p);
    ed=edec(A,p);
    er=erel(A,B,p);
    wstab=wspstab(A,B,p);
    wpopr=wsppopr(A,B,p);
    Rr=rR(A,p);
    Lr=rL(A,p);
end