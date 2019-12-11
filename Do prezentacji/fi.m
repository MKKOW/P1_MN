con=zeros(18,1);
er=zeros(18,1);
wstab=zeros(18,1);
x=[3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
for i=3:20
    [con(i-2),ed,er(i-2),wstab(i-2),wpopr,det_md,det_,det_error,det_relative_error]=testm(hilb(2*i),hilb(2*i),2);
end
figure, plot(x,wstab);
xlabel('Wielkoœæ macierzy');
ylabel('Wspó³czynnik stabilnoœci')