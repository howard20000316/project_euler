clear

tic
[num, num1] = textread('p99_base_exp.txt', '%d,%d');
answer = [1, 1, 0];
for i = 1 : 1000
    if num1(i) * log10(num(i)) > answer(2) * log10(answer(1))
        answer = [num(i), num1(i), i];
    end
end
disp(answer(3));
toc

%Elapsed time is 0.012751 seconds.
