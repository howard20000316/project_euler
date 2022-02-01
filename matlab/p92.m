clear

tic
sum = 0;
for i = 1 : 10000000
    temp = i;
    while temp ~= 1 && temp ~= 89
        str = convertStringsToChars(num2str(temp));
        n = double(str - '0');
        temp2 = 0;
        for j = 1 : length(n)
            temp2 = temp2 + n(j) ^ 2;
        end
        temp = temp2;
    end
    if temp - 1
        sum = sum + 1;
    end
end
disp(sum);
toc

%Elapsed time is 618.006161 seconds.
