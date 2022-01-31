clear

tic
start = [1, 2];
answer = 0;
while start(length(start)) < 4000000
    start(length(start) + 1) = start(length(start)) + start(length(start) - 1);
    if mod(start(length(start)), 2) == 0
        answer = answer + start(length(start));
    end
end
disp(answer + 2);
toc

%Elapsed time is 0.002717 seconds.
