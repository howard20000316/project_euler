clear

tic
count = 0;
prim = primes(1000000);
for i = 1 : length(prim)
    str = convertStringsToChars(num2str(prim(i)));
    if length(str) == 1
        count = count + 1;
    else
        flag = 1;
        for j = 2 : length(str)
            temp = [str(j : length(str)) str(1 : j - 1)];
            if isprime(str2num(temp)) == 0
                flag = 0;
                break;
            end
        end
        if flag
            count = count + 1;
        end
    end
end
disp(count);
toc

%Elapsed time is 4.951598 seconds.
