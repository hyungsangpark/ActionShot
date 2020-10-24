function fileList = GenerateImageList(directory, fileExtension)

% This function receives the name of the directory of photos to be used
% and the file extension for them, and generates a cell array based on 
% found items with corresponding name and file extension.
%
% Input: directory: The directory of the photos to be searched.
%        fileExtension: The file extension for them.
% Output: fileList: A list (cell array) of found items.
%
% Author: Hyung Park

% Changes the working MATLAB directory into the directory entered.
oldFolder = cd(directory);

% Finds images and stores them into a struct array 'fileFound'
fileFound = dir(['*.' fileExtension]);

% Preallocates a cell array that will be used to store the name of the
% found images.
fileList = cell(1, length(fileFound));

% Repeat from 1 to the length of files found with an increment of 1.
for i = 1:length(fileFound)
    
    % Store names of the files found into the fileList cell array from
    % the name field of fileFound struct array.
    fileList{i} = fileFound(i).name;
    
end

% Reverts the working MATLAB directory back to the original location.
cd(oldFolder)

end