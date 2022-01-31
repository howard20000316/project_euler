clear

tic
a = [1 : 100];
b = sum(a) ^ 2;
for i = 1 : 100
    b = b - a(i) ^ 2;
end
disp(b);
toc

%Elapsed time is 0.000911 seconds.
