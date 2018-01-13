%ezplot('sqrt(n) * log(n)');
%ezplot('log(log(n))');
h1 = ezplot('n^0.001', [0, 100, 0, 100]);
set(h1, 'Color', 'r');
hold on;
%ezplot('gamma(n + 1)');
%ezplot('n^0.001');
h2 = ezplot('log(log(n ^ 2))', [0, 100, 0, 100]);
set(h2, 'Color', 'b');