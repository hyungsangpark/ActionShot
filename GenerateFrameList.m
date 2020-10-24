function frameList = GenerateFrameList(frameStart, stepSize, numFrame)

% This function receives starting frame number, step size, and number of
% frames desired to produce a 1D array of frame values that should be used.
%
% Input:  frameStart: The starting frame. The initial frame number.
%         stepSize: The step size between the current frame and the next.
%         numFrame: Total number of frames.
% Output: frameList: A list of frames that should be used with given
%                    condition.
%
% Author: Hyung Park

% Defines the initial frame as listStart
listStart = frameStart;

% Defines the end frame
% End frame is initial frame + step size * number of frames - 1
listEnd = frameStart + stepSize * (numFrame-1);

% Creates a list (an array) of frames to use.
frameList = linspace(listStart, listEnd, numFrame);

end