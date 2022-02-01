clear

tic
div = [];
answer = 0;
for i = 1 : 25320
    div(end + 1) = sum(divisors(i)) - i;
end
disp(max(div))
for i = 2 : 10000
    if div(uint64(div(i))) == i && div(i) ~= i
        answer = answer + i;
    end
end
disp(answer)
toc

%Elapsed time is 372.408685 seconds.
