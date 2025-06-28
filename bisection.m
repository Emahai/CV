function root = bisection(f, a, b, tol)
    if f(a) * f(b) >= 0
        error('f(a) and f(b) must have opposite signs');
    end
    while (b - a) / 2 > tol
        c = (a + b) / 2;
        if f(c) == 0
            root = c;
            return;
        elseif f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a + b) / 2;
end