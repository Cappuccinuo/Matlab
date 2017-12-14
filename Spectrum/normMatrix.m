function n = normMatrix(matrix)
% GIVEN : a matrix
% RETURNS : a matrix after normalized
    sumOfMatrix = sum(matrix);
    n = matrix./sumOfMatrix;
end

