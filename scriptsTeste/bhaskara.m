function y=bhaskara() 
clc;

a= input('Insira o coeficiente de x^2: ');
b= input('Insira o coefieciente de x: ');
c= input('Insira a variável livre: ');
x1=0;
x2=0;

delta=0;
delta= (b^2) - (4*a*c);
x1= (-b + sqrt(delta) )/2*a;
x2= (-b - sqrt(delta) )/2*a;
fprintf('As raízes são: %f e %f \n',x1,x2);
array= -20:0.1:20;
p=[a,b,c];
plot (array, polyval (p,array));


end