% matrix : The whole picture, as a matrix format
% picture : Cell array to store every picture
%    Example : picture{1} is the 200 * 200 pixels matrix of first picture
%              picture{12}(45, 32) is the value of point (45, 32) in 
%                  picture 12 

matrix = rand(200, 10000, 'double');

% Get the row size, and column size of matrix
[rowSize, columnSize] = size(matrix);

% Divide the whole picture into 50 pictures
pictureNum = 50;
picture = dividePicture(matrix, columnSize, pictureNum);

% New a cell to store the spectrum of every point
spectrumTest = cell(200, 200);

% Output the result to a txt
fid=fopen('spectrumOfEveryPoint.txt', 'wt');

% There are 200 * 200 pixels
for i = 1 : 200
    for j = 1 : 200
        % Get the spectrum of given point
        spectrumTest{i, j} = getSpectrumOfGivenPoint(picture, pictureNum, i, j);
        fprintf(fid, "Spectrum of point (%d, %d)\n", i, j);
        fprintf(fid, '%g ', spectrumTest{i, j});
        fprintf(fid, "\n");
    end
end

fclose(fid);









