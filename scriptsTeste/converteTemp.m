function y = converteTemp(temp, iscelcius)
    clc;
    if iscelcius == true
        y = (9/5) * temp + 32;
    else
        y = 5/9 * (temp-32);
    end
end

