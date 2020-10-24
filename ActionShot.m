function newImage = ActionShot(imageArray)

% This function receives 1xn 1D cell array, with 3D image arrays in each
% cell, and creates a resultant image by finding the rgb values among the
% given images which are the furthest away from the median values among the
% given images.
%
% This creates an image where differences between the images are added into
% the resultant image.
%
% Input: 1xn Cell Array of 3D image arrays.
% Output: nxnx3 3D image array with uint8 format.
%
% Author: Hyung Park

% Finds the dimensions for the image in the first cell of imageArray.
% This defines the number of rows and cols the resultant image will have.
[rows, cols, ~] = size(imageArray{1});

% Preallocating the resultant image, or 'newImage' and setting it in
% 'uint8' format.
newImage = zeros(rows, cols, 3, 'uint8');

% Preallocating an array to store median values for each pixel.
medianArray = zeros(1, length(imageArray), 3);

for i = 1:rows
    
    for j = 1:cols
        
        for n = 1:length(imageArray)
            
            % Allocating rgb values from a specific pixel from each images into the
            % medianArray.
            medianArray(1, n, 1) = imageArray{n}(i, j, 1);
            medianArray(1, n, 2) = imageArray{n}(i, j, 2);
            medianArray(1, n, 3) = imageArray{n}(i, j, 3);
            
            % Uses MedianPixel function to receive a median value for each
            % rgb values, then stores them into a designated pixel.
            [newImage(i,j,1), newImage(i,j,2), newImage(i,j,3)] = MostDistantPixel(medianArray);
            
        end
        
    end
    
end

end