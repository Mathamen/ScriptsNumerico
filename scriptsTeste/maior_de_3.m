clc;
a= input('Digite um primeiro numero: ');
b= input('Digite um segundo numero: ');
c= input('Digite um terceiro numero: ');
maior=0;
if (a>=b && a>=c)
fprintf('O maior é %f', a);
elseif (b>=a && b>=c)
fprintf('O maior é %f',b);
else
fprintf('O maior é %f',c);
end



