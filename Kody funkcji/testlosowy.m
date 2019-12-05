function testlosowy(fun,n,k,p)
    if nargin == 2
        p=2;
    end
    if nargin > 4 || nargin < 1
        error('B³¹d');
    end
    c=zeros(k,1);
    ed=zeros(k,1);
    er=zeros(k,1);
    wstab=zeros(k,1);
    wpopr=zeros(k,1);
    r=zeros(k,1);
    l=zeros(k,1);
    arg=zeros(k,1);
    detm=zeros(k,1);
    detd=zeros(k,1);
    for i=1:k
        x=fun(i*n);
        y=fun(i*n);
        arg(i)=i*n;
        while det(x)<eps
            x=fun(i*n);
        end
        while det(y)<eps
            y=fun(i*n);
        end
        [c(i),ed(i),er(i),wstab(i),wpopr(i),r(i),l(i)]=testm(x,y,p);
        detm(i)=detmd(x);
        detd(i)=det(x);
    end
    figure, plot(arg,c,'g');
    title('WskaŸnik uwarunkowania macierzy');
    figure, plot(arg,ed,'g');
    title('B³¹d rozk³adu macierzy A');
    figure, plot(arg,er,'r');
    title('B³¹d rozwi¹zania uk³adu XA=B');
    figure, subplot(1,2,1);plot(arg,detm,'r');
    title('Wyznacznik policzony funkcj¹ detmd(A)');
    subplot(1,2,2);plot(arg, detd,'g');
    title('Wyznacznik policzony funkcj¹ det(A)');
    detr=abs(detm-detd)./detd;
    figure, plot(arg,detr);
    title('B³¹d wzglêdny wyznacznika');
    plik.cond=c;
    plik.edec=ed;
    plik.erel=er;
    plik.wspstab=wstab;
    plik.wsppopr=wpopr;
    plik.rL=r;
    plik.rR=l;
    plik.detmd=detm;
    save plik;
end