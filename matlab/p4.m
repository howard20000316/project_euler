clear

tic
a = [100 : 999];
b = [];
for i = 1 : length(a)
    for j = 1 : length(a)
        b(end + 1) = (a(i) * a(j));
    end
end
b = b(b > 100000 & mod(b, 10) > 0 & floor(b / 100000) == mod(b, 10) & ...
    floor(mod(b, 100000) / 10000) == floor(mod(b, 100) / 10) & ...
    floor(mod(b, 10000) / 1000) == floor(mod(b, 1000) / 100))
disp(max(b))
toc

%Elapsed time is 0.197717 seconds.
