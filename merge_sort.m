function A = merge_sort(A)
    if length(A) <= 1
        return;
    end
    mid = floor(length(A) / 2);
    left = merge_sort(A(1:mid));
    right = merge_sort(A(mid+1:end));
    A = merge(left, right);
end

function result = merge(left, right)
    result = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) <= right(1)
            result(end+1) = left(1);
            left(1) = [];
        else
            result(end+1) = right(1);
            right(1) = [];
        end
    end
    result = [result, left, right];
end
