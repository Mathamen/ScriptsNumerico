%{
Esta função é responsável por converter temperaturas de C para F, e vice-versa.

Ela recebe como parâmetro:
temp= valor da temperatura na escala atual
iscelcius= booleano que indica se a temperatura está em celcius ou não


%}
function y = converteTemp(temp, iscelcius)
    clc;
    if iscelcius == true
        y = (9/5) * temp + 32;
    else
        y = 5/9 * (temp-32);
    end
end

