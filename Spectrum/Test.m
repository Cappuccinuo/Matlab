% A file for you to test function or method in Matlab
a = cell(1, 5);
b = [1, 2, 3, 4, 5];
c = [23, 4, 5, 1, 2];
a{1, 1} = b;
a{1, 2} = c;
a = a(~cellfun(@isempty, a));
    