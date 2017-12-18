function n = normMatrix(matrix)
% GIVEN : a matrix
% RETURNS : a matrix after normalized using mapminmax
    n = mapminmax(matrix, 0, 1);
end

