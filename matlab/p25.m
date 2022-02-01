clear

tic
count = 2;
a = zeros(1, 1000);
b = zeros(1, 1000);
c = zeros(1, 1000);
a(1) = 1;
b(1) = 1;
while c(1000) == 0
    c = zeros(1, 1000);
    count = count + 1;
    c = a + b;
    for i = 1 : 999
        c(i + 1) = floor(c(i) / 10) + c(i + 1);
        c(i) = mod(c(i), 10);
    end
    a = b;
    b = c;
end
disp(count)
toc

%Elapsed time is 0.113082 seconds.
