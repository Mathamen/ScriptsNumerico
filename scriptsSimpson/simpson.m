function [ y ] = simpson( f, a, b, n )
h=(b-a)/(n-1);
x0=a;
x1=x0+h;
x2=x1+h;
sf=0;
for i=1:(n-1)/2
    sf=sf+feval(f,x0)+4*feval(f,x1)+feval(f,x2);
    x0=x2;
    x1=x0+h;
    x2=x1+h;
end
y=(h/3)*sf;
end

