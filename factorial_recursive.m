% ===== Recursive Factorial =====
function f = factorial_recursive(n)
    if n == 0 || n == 1
        f = 1;
    else
        f = n * factorial_recursive(n - 1);
    end
end
