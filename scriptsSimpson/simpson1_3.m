function [area]= simpson1_3(a,b,n,f)
  %{
  nessa função:
  a= limite menor, ou seja, o limite esquerdo
  b= limite maior, ou seja, o limite direito
  n= número de segmentos criados, quanto mais, maior a precisão
  f= função a ser analizada
  h= tamanho do segmento
  area= resultado da integral, a área desejada
  pontos= discretização de a até b, para ser possível gerar a imagem através do comando plot
  par e impar são variáveis para a equação usada

  Equação usada: 
  integral de f avaliada de a até b = h/3 (f0+fn +4* [somatório n-1 f(i) números impares]+ 2*[somatório n-2 f(i) números pares])
  
  
  %}


  pontos=[a :0.01: b]; 
  h = (b - a) / n;


  
  soma_par = 0;
  soma_impar = 0;
  
  for i = 1 :2: n-1
  
    xi = a+ (i*h) ;
    soma_impar = soma_impar + f(xi);
    
  end
  
  for i = 2 :2: n-2
  
    xi = a + (i*h);
    soma_par = soma_par + f(xi);
    
  end
 
  area = (h/3) * ( f(a) + f(b) + 4*soma_impar + 2*soma_par);
  
  disp('O valor aproximado da área é: ');
  disp(area);
  plot(pontos, f(pontos));

  
end