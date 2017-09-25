function  Alex_Calculate_Entropy( ImgPath )
    clc
    close all
    fprintf('### Using builtin  ###\n');
    src_gray = imread(ImgPath);
    Alex_Entropy = entropy(src_gray);
    fprintf('### Using builtin  %f ###\n',Alex_Entropy);
end