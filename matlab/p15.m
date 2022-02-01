clear

format long g
tic
a = zeros(21);
a(1, 1) = 1;
for i = 1 : 21
    for j = 1 : 21
        if i == 1 && j ~= 1
            a(i, j) = a(i, j - 1);
        elseif i ~= 1 && j ~= 1
            a(i, j) = a(i - 1, j) + a(i, j - 1);
        elseif j == 1 && i ~= 1
            a(i, j) = a(i - 1, j);
        end
    end
end
disp(a(21, 21));
toc

%Elapsed time is 0.002632 seconds.
