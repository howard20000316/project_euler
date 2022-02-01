clear

tic
answer = [0, 0, 0];
for i = -999 : 999
    for j = 2 : 1000
        if isprime(j)
            flag = 1;
            start = 0;
            while flag
                temp = start ^ 2 + i * start + j;
                if isprime(uint64(temp)) && start > answer(3)
                    answer = [i, j, start];
                elseif isprime(uint64(temp)) ~= 1
                    flag = 0;
                end
                start = start + 1;
            end
        end
    end
end
disp(answer(1) * answer(2))
toc

%Elapsed time is 35.812151 seconds.
