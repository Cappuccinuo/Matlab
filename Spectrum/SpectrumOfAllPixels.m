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
fid=fopen('meanSpectrum.txt', 'wt');
% Define the threshold to filter
threshold = 0.5;
% Count the number of point been filtered
count = 1;
filterNum = 0;
filterSpectrum = cell(40000, 1);

% There are 200 * 200 pixels
for i = 1 : 200
    for j = 1 : 200
        % Get the spectrum of given point
        spectrumTest{i, j} = getSpectrumOfGivenPoint(picture, pictureNum, i, j);
        if spectrumTest{i, j}(13) > threshold
            %fprintf(fid, 'Spectrum of point (%d, %d): ', i, j);
            %fprintf(fid, 'Value on 13 is %d\n', spectrumTest{i, j}(13));
            %fprintf(fid, '%g \n', dotQuot(spectrumTest{i, j}));
            %fprintf(fid, 'Matrix after normalization is \n');
            filterSpectrum{count, 1} = normMatrix(dotQuot(spectrumTest{i, j}));
            filterNum = filterNum + 1;
            %fprintf(fid, '%g ', normMatrix(dotQuot(spectrumTest{i, j})));
            %fprintf(fid, "\n");
        else
            filterSpectrum{count, 1} = zeros(1, 50);
        end
        count = count + 1;
    end
end

meanSpectrum = getMeanSpectrum(filterSpectrum);
fprintf(fid, 'The mean spectrum is: \n');
fprintf(fid, '%g ', meanSpectrum);
plot(meanSpectrum);
fclose(fid);









