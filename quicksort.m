% ===== Quick Sort =====
function A = quicksort(A)
    if length(A) <= 1
        return;
    end
    pivot = A(1);
    left = A(A < pivot);
    middle = A(A == pivot);
    right = A(A > pivot);
    A = [quicksort(left), middle, quicksort(right)];
end