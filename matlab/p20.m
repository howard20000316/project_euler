clear

tic
a = zeros(1, 400);
a(1) = 1;
for i = 1 : 100
    for j = 1 : 400
        a(j) = a(j) * i;
    end
    for j = 1 : 399
        a(j + 1) = floor(a(j) / 10) + a(j + 1);
        a(j) = mod(a(j), 10);
    end
end
disp(sum(a))
toc

%Elapsed time is 0.004333 seconds.
