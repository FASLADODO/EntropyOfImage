function  Alex_Calculate_Entropy( ImgPath )
    clc
    close all
    fprintf('### Using builtin  ###\n');
    src_gray = imread(ImgPath);
    max(max(src_gray));
    Alex_Entropy = entropy(src_gray);
    fprintf('### Using builtin  %f ###\n',Alex_Entropy);
    
    %% self design
    X = src_gray;
    % total rows m, total columns n
    [m,n,t]=size(X);     
    max(max(X));
    I3 = double(X)+1;
    max(max(I3));
%   create and initialize 256 array
    s(256) = 0;    
    for i = 1:m    
        for j = 1:n    
            va = I3(i,j);
            s(va) = s(va)+1;  
        end    
    end    
%     calculate every pixel-value's proportion
    p = s./(m*n);    
    en = 0.;    
%     calculate entropy of every grayscale then sum them
    for i = 1:256    
        if p(i)~=0    
           en = en+p(i)*log2(p(i));    
        end    
    end    
    shang = -en;
    fprintf('*** Using SelfDesigned %f ***\n',shang);
    
    
end