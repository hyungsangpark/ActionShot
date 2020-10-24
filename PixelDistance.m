function distance = PixelDistance(p1, p2)

% This function receives two arrays from a point in an image with three
% layers (rgb), and calculates the distance between them by squaring the
% difference between each rgb values of two points, then squaring it which
% will all be added together afterwards. 
% 
% Input:  p1: point 1
%         p2: point 2
% Output: distance: squared distance between two points.
% 
% Author: Hyung Park

% Calculates the distance between two points.
distance = ((double(p1(1))-double(p2(1)))^2 + (double(p1(2))-double(p2(2)))^2 + (double(p1(3))-double(p2(3)))^2);

end