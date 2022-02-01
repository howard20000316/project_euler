clear

tic
max_chain = [0, 0];
for i = 1 : 999999
    count = 1;
    temp = i;
    while temp > 1
        if mod(temp, 2) == 0
            temp = temp / 2;
        else
            temp = temp * 3 + 1;
        end
        count = count + 1;
    end
    if count > max_chain(1)
        max_chain(1) = count;
        max_chain(2) = i;
    end
end
disp(max_chain(2))
toc

%Elapsed time is 5.238020 seconds.
