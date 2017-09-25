function Example04()
    strMsg = '\n Nhap so nguyen n: ';
    n = input(strMsg);
    s = 0;
    for i=1:n
        s = s + i;
    end
    fprintf('Tong tu 1 den %d: %d \n',n,s);
end