% Note that N = 6 gaurantees that MySimpson will have the desired precision of 10^(-5) 
 
function [x] = SolveInt(a)
    f = @(x) (1 / sqrt(2 * pi)) * exp((-x.^2) / 2);
    p(1) = 0.5;
    N = 6;
    k = 2;
    tol = 1;
    while tol > 10^(-5) 
        y = MySimpson(f,0,p(k - 1),N);
        p(k) = p(k - 1) - ((y - a) / f(p(k - 1))); 
        tol = abs(p(k) - p(k - 1));
        k = k + 1; 
    end
    x = p(k - 1);
end
