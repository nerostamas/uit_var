function Example03()
    strMsg = '\n Nhap so nguyen n: ';
    n = input(strMsg);
    s = 0;
    i = 1;
    while i<= n
        s = s + i;
        i = i + 1;
    end
    fprintf('\n Tong tu 1 den %d la: %d \n',n,s);
end