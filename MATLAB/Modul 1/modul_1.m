classdef modul_1
% Fungsi-fungsi yang ada di Latihan Soal Modul 1 
% SOAL 1 
%         (a) = f1(x) 
%         (b) = f2(x)
%         (c) = f3(x)
%         (d) = f4(x)
% SOAL 2
%         (a) = f5(x) 
%         (b) = f6(x)
% SOAL 3 = f7(x)
% SOAL 4 = f8(x)
% SOAL 5 = f9(x)
% SOAL 6 = f10(x)
% SOAL 7 = f11(x)
% SOAL 8 = f12(x)
% SOAL 9 = f11(x)
% SOAL 10 = f13(x)

    methods(Static)
        function [y] = f1(x)
        % y = x - exp(-x)               
            y = x - exp(-x);
        end
        function [y] = f2(x)
        % y = x^6 - x- 1
            y = x^6 - x- 1;
        end
        function [y] = f3(x)
        % y = 5 - x^-1
            y = 5 - x^-1;
        end
        function [y] = f4(x)
        % y = x^2 - sin(x)
            y = x^2 - sin(x);
        end 
        function [y] = f5(x)
        % y = 1/(x^2 + 1)
            y = 1/(x^2 + 1);
        end    
        function [y] = f6(x)
        % y = 1/(x - 1)
            y = 1/(x - 1);
        end    
        function [y] = f7(x)
        % y = exp(-4*x) - 0.1
            y = exp(-4*x) - 0.1;
        end    
        function [y] = f8(x)
        % y = 4*x - cos(x)
            y = 4*x - cos(x);
        end
        function [y] = f9(x)
        % y = 7*x - cos(2*pi*x)
            y = 7*x - cos(2*pi*x);
        end
        function [y] = f10(x)
        % y = 2 - exp(x)
            y = 2 - exp(x);
        end
        function [y] = f11(x)
        % y = x^4 - 10*(x^3) + 35*(x^2) - 50*x + 24
            y = x^4 - 10*(x^3) + 35*(x^2) - 50*x + 24;
        end
        function [y] = f12(x)
        % y =x^4 - x - 1
            y = x^4 - x - 1;
        end
        function [y] = f13(x)
        % y =  x^4 + 5*(x^3) + 9*(x^2) + 8*x + 4
            y = x^4 + 5*(x^3) + 9*(x^2) + 8*x + 4;
        end
    end
end

% help modul_1_soal_1.f1