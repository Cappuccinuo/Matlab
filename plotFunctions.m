%ezplot('sqrt(n) * log(n)');
%ezplot('log(log(n))');
h1 = ezplot('gamma(n + 1)', [0, 100, 0, 100]);
set(h1, 'Color', 'r');
hold on;
%ezplot('gamma(n + 1)');
%ezplot('n^0.001');
h2 = ezplot('4^n', [0, 100, 0, 100]);
set(h2, 'Color', 'b');