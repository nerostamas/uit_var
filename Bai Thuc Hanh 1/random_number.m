function random_number()
    a = rand();
    fprintf('\n Random number in [0,1]:[%0.3f]',a);
    
    r = randi([1 10]);
    fprintf('\n Random Integer in [1,10]: %d',r);
    
    rArray = randi([-10,10],1,10);
    fprintf('\n Size of array (column): %d',size(rArray,2));
    fprintf('\n Array init are: ');
    fprintf('[%2d]',rArray);
end