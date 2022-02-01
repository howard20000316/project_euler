clear

format long g
tic
a = round(sqrt(1020304050607080900)) + 20;
b = round(sqrt(1929394959697989900));
while a < b
    temp = convertStringsToChars(string(uint64(a * a)));
    temp(17) = '9';
    temp(18) = '0';
    temp(19) = '0';
    if temp(1) == '1' && temp(3) == '2' && temp(5) == '3' && temp(7) == '4' && temp(9) == '5' && temp(11) == '6'  && temp(13) == '7'  && temp(15) == '8'  && temp(17) == '9'
        disp(a);
        break;
    end
    if mod(a, 100) == 30
        a = a + 40;
    else
        a = a + 60;
    end
end
toc

%Elapsed time is 6.140888 seconds.
