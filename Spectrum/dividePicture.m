function div=dividePicture(matrix, columnSize, n)
% GIVEN: a picture matrix, and split number
% RETURNS: a cell array, that each cell is a picture with n columns
% This function 
    div = cell(1, columnSize / n);
    
    %columnSizeAfterSplit x
    x = columnSize / n;
    for i = 1 : n
        div{i} = matrix(:, (x * (i - 1) + 1) : x * i);
    end