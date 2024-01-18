clc;
a= input('digite um numero: ');
if (a>0)
fprintf('%f e positivo', a);
elseif (a<0)
fprintf('%f e negativo',a);
else
fprintf('%f e nulo', a);
end