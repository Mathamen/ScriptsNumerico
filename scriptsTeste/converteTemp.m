function y = converteTemp(temp, celcius)
    clc;
    if celcius == true
        y = (9/5) * temp + 32;
    else
        y = temp;
    end
end

