function div=dividePicture(matrix, columnSize, pictureNum)
% GIVEN: a picture matrix, and split number
% RETURNS: a cell array, that each cell is a picture with n columns
% This function 

    %columnSizeAfterSplit x
    x = columnSize / pictureNum;
    div = cell(1, x);
    
    
    for i = 1 : pictureNum
        div{i} = matrix(:, (x * (i - 1) + 1) : x * i);
    end