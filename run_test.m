% ===== Matrix Multiplication =====
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
C = matrix_multiply(A, B);
disp('Result:');
disp(C);

% ===== Bisection Method =====
% Define the function for which we want to find the root
f = @(x) x^3 - x - 2;  

% Interval [a, b] where the function changes sign
a = 1;
b = 2;

% Tolerance for stopping
tol = 1e-6;

% Call the bisection function
root = bisection(f, a, b, tol);

% Display the result
fprintf('Root found: %.6f\n', root);
fprintf('f(root) = %.6e\n', f(root));

% ===== Bubble Sort =====
% Test input array
A = [64, 34, 25, 12, 22, 11, 90];

% Display before sorting
disp('Original array:');
disp(A);

% Call the bubble sort function
sorted_A = bubble_sort(A);

% Display after sorting
disp('(Bubble Sort) Sorted array:');
disp(sorted_A);

% ===== Merge Sort =====
% Test input array
A = [38, 27, 43, 3, 9, 82, 10];

% Display before sorting
disp('Original array:');
disp(A);

% Call the merge sort function
sorted_A = merge_sort(A);

% Display after sorting
disp('(Merge Sort) Sorted array:');
disp(sorted_A);

% ===== Quick Sort =====
% Test input array
A = [29, 10, 14, 37, 14];

% Display before sorting
disp('Original array:');
disp(A);

% Call the quicksort function
sorted_A = quicksort(A);

% Display after sorting
disp('(Quick Sort) Sorted array:');
disp(sorted_A);

% ===== Binary Search =====
% Sorted input array (required for binary search)
A = [3, 8, 15, 23, 42, 56, 78];

% Key to search for
key = 42;

% Display the array
disp('Array:');
disp(A);

% Perform binary search
index = binary_search(A, key);

% Display result
if index != -1
    fprintf('Key %d found at index %d.\n', key, index);
else
    fprintf('Key %d not found in the array.\n', key);
end

% ===== Recursive Factorial =====
% Test input
n = 5;

% Call the recursive factorial function
f = factorial_recursive(n);

% Display result
fprintf('Factorial of %d is %d\n', n, f);

% ===== Palindrome Check =====
test_strings = {
    'madam', ...
    'OpenAI', ...
    'A man a plan a canal Panama', ...
    'No lemon no melon'
};

fprintf('Palindrome tests:\n');
for i = 1:length(test_strings)
    str = test_strings{i};
    result = is_palindrome(str);
    fprintf('"%s" -> %d\n', str, result);
end

% ===== Statistics =====
data = [1, 2, 2, 3, 4, 5, 5, 5, 6];

[mean_val, median_val, mode_val] = stats(data);

fprintf('\nStatistics for data: ');
disp(data);
fprintf('Mean: %.2f\n', mean_val);
fprintf('Median: %.2f\n', median_val);
fprintf('Mode(s): ');
disp(mode_val);