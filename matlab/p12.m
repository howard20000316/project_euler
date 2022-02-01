clear

tic
count = 0;
start = 0;
addup = 1;
while count < 500
    start = start + addup;
    addup = addup + 1;
    count = length(divisors(start));
end
disp(start)
toc

%Elapsed time is 219.711850 seconds.
