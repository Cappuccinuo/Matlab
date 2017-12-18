function meanSpectrum = getMeanSpectrum(filterSpectrum)
% GIVEN: the spectrum cell after filter, the cell is pointNum * 1
% RETURNS: the mean matrix of every picture (1 * pictureNum)
    matrixFilterSpectrum = cell2mat(filterSpectrum);
    meanSpectrum = mean(matrixFilterSpectrum);
end

