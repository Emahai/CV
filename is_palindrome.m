% ===== Palindrome Check =====
function is_pal = is_palindrome(str)
    str = lower(str(str != ' '));  % Remove spaces and convert to lowercase
    is_pal = strcmp(str, fliplr(str));
end