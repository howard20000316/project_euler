clear

tic
eth = [];
ethc = 1;
for i = 1 : 100
    eth(i) = ethc;
    if ethc == 1 && i > 2 && eth(i - 1) == 1 || i == 1
        ethc = 2 * (floor(i / 3) + 1);
    elseif ethc == 1
        ethc = 1;
    else
        ethc = 1;
    end
end
temp = 0;
numm = 99;
for i = 1 : numm
    if temp == 0
        temp = sym(1 / eth(numm + 1 - i));
    else
        temp = 1 / (eth(numm + 1 - i) + temp);
    end
end
[n, d] = numden(2 + temp);
n = char(n);
answer = 0;
for i = 1 : length(n)
    answer = answer + str2num(n(i));
end
disp(answer)
toc

%Elapsed time is 0.206219 seconds.
