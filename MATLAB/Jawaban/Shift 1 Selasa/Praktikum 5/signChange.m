function changes = signChange(x)
% Ketik jawaban anda dibawah garis.
% --------------------------------
    changes = zeros(length(x)-1, 2);
    j = 1;
    for i = -0.999:0.001:1
        if (polyval(x, i)*polyval(x, i-0.001) < 0)
            changes(j, :) = [i-0.001, i];
            j = j+1;
        end
    end
end