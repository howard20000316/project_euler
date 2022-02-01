clear

tic
answer = 0;
for i = 1 : 1000
    temp = i;
    for j = 1 : i - 1
        temp = mod(temp * i, 10000000000);
    end
    disp(temp)
    answer = mod(answer + temp, 10000000000);
end
disp(answer);
toc

%Elapsed time is 0.071639 seconds.
