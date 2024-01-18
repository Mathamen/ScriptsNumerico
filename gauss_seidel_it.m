function y = gauss_seidel_it(A,b,x0,k)
%{
Essa função implementa o metodo de Gauss-Seidel com critério de parada igual ao num de iterações;
A: corresonde a matriz de coeficientes do SL;
b: corresonde ao vetor de termoos indeppendentes do SL;
x0: corresonde a estima inicial;
k: corresonde ao num de iterações;
%}
[L,C] = size(A);
for it = 1:k
    fprintf('%d: ',it);        
    for i = 1:L
        soma=0;
        for j = 1:C
             if(j<i)
                soma=soma+A(i,j)*xk(j);
             elseif (j>i)
                soma=soma+A(i,j)*x0(j);
            end
        end
        xk(i)=1/A(i,i)*(b(i)-soma);
        fprintf('%.4f  ', xk(i));
    end
    x0=xk;
    fprintf('\n');
end
y=xk;
end
