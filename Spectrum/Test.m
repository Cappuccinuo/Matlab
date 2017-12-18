% A file for you to test function or method in Matlab
a = cell(4, 1);
b = [1, 2, 3, 4, 5];
c = [23, 4, 5, 1, 2];
d = [0, 0, 0, 0, 0];
e = [0, 1, 2, 3, 4];
a{1, 1} = b;
a{2, 1} = c;
a{3, 1} = d;
a{4, 1} = e;
f = cell2mat(a);
mean(f)

    