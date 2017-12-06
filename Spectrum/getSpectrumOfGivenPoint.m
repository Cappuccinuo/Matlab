function spectrum=getSpectrumOfGivenPoint(picture, i, j)
% GIVEN: a picture cell array, and the coordinate of a pixel
% RETURNS: The spectrum of the pixel
% This function 
    spectrum = [];
    for pic = 1 : 50
        spectrum(pic) = picture{pic}(i, j);
    end