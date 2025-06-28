% ===== Matrix Multiplication =====
function C = matrix_multiply(A, B)
    [m, n] = size(A);
    [p, q] = size(B);
    if n != p
        error('Matrix dimensions do not match for multiplication');
    end
    C = zeros(m, q);
    for i = 1:m
        for j = 1:q
            for k = 1:n
                C(i, j) += A(i, k) * B(k, j);
            end
        end
    end
end
