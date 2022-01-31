clear

tic
a = [1 : 20];
for i = 2 : 20
    for j = i - 1 : -1 : 1
        if mod(a(i), a(j)) == 0
            a(i) = a(i) / a(j);
        end
    end
end
disp(prod(a))
toc

%Elapsed time is 0.001666 seconds.
