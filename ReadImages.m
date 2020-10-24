function images = ReadImages(directory, fileList)

% This function receives the directory of the images and a list (cell
% array) of files to read, and produces a 1xn 1D cell array that each cell
% has a corresponding image from the earlier list of files to read.
% (meaning first file from the list being on the cell of the images read.)
%
% Input: directory: The directory of the images in the list of images.
%        fileList: The list of names for the images used.
% Output: images: A list of images in each cell of it.
%
% Author: Hyung Park

% Preallocates a cell array that images from the fileList can be stored to
% as a full 3D image array.
images = cell(1,length(fileList));

% Changes the working MATLAB directory into the directory entered.
oldFolder = cd(directory);

% Repeat the code inside with the length of files found - 1, with an increment of 1.
for i = 1:length(fileList)
    
    % Reads in the image and stores the image array into a respective cell.
    images{i} = imread(fileList{i});
    
end

% Reverts the working MATLAB directory back to the original location.
cd(oldFolder)

end