function y = gauss_seidel_eps(A,b,x0,eps)
%{
Essa função implementa o metodo de Gauss-Seidel com critério de parada igual ao num de iterações;
A: corresonde a matriz de coeficientes do SL;
b: corresonde ao vetor de termoos indeppendentes do SL;
x0: corresonde a estima inicial;
k: corresonde ao num de iterações;
%}
[L,C] = size(A); fim=0; it=1;
while(fim==0)
    fprintf('%d: ',it);        
    for i = 1:L
        soma=0;
        for j = 1:C
            if(j < i)
                soma=soma+A(i,j)*xk(j);
            elseif (j > i)
                soma=soma+A(i,j)*x0(j);
	    end
        end
        xk(i)=1/A(i,i)*(b(i)-soma);
        vdif(i)=abs(x0(i)-xk(i));
        fprintf('%.4f  ', xk(i));
    end
   fprintf('  :%f\n', max(vdif)/max(abs(xk)));
   if((max(vdif)/max(abs(xk)))<eps)
        fim=1;
   end
   x0=xk;
   it=it+1;
end
y=xk;
end
