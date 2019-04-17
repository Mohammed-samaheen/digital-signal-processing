function output = My_entropy(im)
    var = imhist(im);
    N = sum(var(:));
    var = var/N;
    var = var(var > 0);
    output = -sum(var.*log2(var));
end