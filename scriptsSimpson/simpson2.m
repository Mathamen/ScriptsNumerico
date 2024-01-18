function y = simpson2(m)
[L,C]=size(m);
h=(m(1,C)-m(1,1))/(C-1);
sf=0;
k=1;
for i=1:(C-1)/2
    sf= sf+m(2,k)+4*m(2,k+1)+m(2,k+2);
    k = k+2;
end
y=(h/3)*sf;
end

