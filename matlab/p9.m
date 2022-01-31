clear

tic
flag = 0;
for a = 1 : 999
    b = a + 1;
    while 1000 - a - b > b && flag == 0
        if a ^ 2 + b ^ 2 == (1000 - a - b) ^ 2
            disp(a * b * (1000 - a - b));
            flag = 1;
        elseif a ^ 2 + b ^ 2 < (1000 - a - b) ^ 2
            b = b + 1;
        else
            break;
        end
    end
    if flag == 1
        break;
    end
end
toc

%Elapsed time is 0.007114 seconds.
