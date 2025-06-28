% ===== Binary Search =====
function index = binary_search(A, key)
    low = 1;
    high = length(A);
    while low <= high
        mid = floor((low + high) / 2);
        if A(mid) == key
            index = mid;
            return;
        elseif A(mid) < key
            low = mid + 1;
        else
            high = mid - 1;
        end
    end
    index = -1;  % Not found
end
