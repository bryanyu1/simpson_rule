function [x] = MySimpson(u,a,b,N) 
    h = (b - a) / N; 
    y(1) = a; 
    for i = 1:N
        y(i + 1) = a + i * h;
    end
    sum_1 = 0; 
    sum_2 = 0;
    for i = 1:N 
        x_i = (y(i + 1) + y (i)) / 2;
        sum_1 = sum_1 + u(x_i);
    end 
    for i = 1:(N - 1)
        sum_2 = sum_2 + u(y(i + 1));
    end
    x = (h / 6) * (u(a) + 4 * sum_1 + 2 * sum_2 + u(b));
end
