function [root, iters] = secant(func, x0, x1)
if (x0 == x1) 
    disp("x0 and x1 must be distinct");
    else 
    curr = x1;
    prev = x0;
    error = 1e-15;
    iters = 0;
    while abs(func(curr)) > error && iters < 50 && curr ~= prev
        x2 = curr - func(curr) * (curr - prev)/ (func(curr) - func(prev));
        prev = curr;
        curr = x2;
        iters = iters + 1;
    end
    root = curr;
end