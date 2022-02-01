clear

tic
sum = 0;
for i = 1 : 1000000
    a = string(i);
    b = string(dec2bin(i));
    if a == reverse(a) && a(end) ~= '0' && b == reverse(b) && b(end) ~= '0'
        sum = sum + i;
    end
end
disp(sum);
toc

%Elapsed time is 6.440042 seconds.
