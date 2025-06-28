% ===== Statistics =====
function [mean_val, median_val, mode_val] = stats(data)
    mean_val = sum(data) / length(data);
    sorted = sort(data);
    n = length(data);
    if mod(n, 2) == 1
        median_val = sorted((n + 1) / 2);
    else
        median_val = (sorted(n/2) + sorted(n/2 + 1)) / 2;
    end
    uniq = unique(data);
    counts = histc(data, uniq);
    max_count = max(counts);
    mode_val = uniq(counts == max_count);
end