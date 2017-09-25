function loadprime(n)
    n = 25;
    strFileName = ['prime',num2str(n),'.mat'];
    load(strFileName);
    fprintf('[%2d]',rArray);
end