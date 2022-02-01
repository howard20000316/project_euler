clear

tic
a = '1234567';
a = perms(a);
safe = [];
for i = 1 : length(a(:, 1))
    temp = '';
    for j = 1 : length(a(1, :))
        temp = [temp a(i, j)];
    end
    if isprime(str2num(temp))
        safe(end + 1) = str2num(temp);
    end
end
disp(max(safe));
toc

%Elapsed time is 0.374590 seconds.
