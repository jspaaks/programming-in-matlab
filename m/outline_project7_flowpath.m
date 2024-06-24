clear       % clear old variables from the workspace
close all   % close all open figures, if there are any
clc         % clear the command window

% % % % % % % % % INITIALIZATION % % % % % % % % % % % % % %
% initialization of necessary variables
%
% load the DEM
% determine the size of the DEM
% define start position CurRow and CurCol and initialize the track
% calculate the matrix Dist

% % % % % % % % % DYNAMIC PART % % % % % % % % % % % % % % %
% create a for-loop for 25 iterations
% select the submatrix H
% calculate DeltaH
% calculate Grad
% determine the row and column of the lowest Grad
% determine the next position in the DEM and add this to the track
% end the loop

% % % % % % % % % VISUALIZATION % % % % % % % % % % % % % % % 
% visualize ValleyDem
hold on % (for keeping the DEM on the background, see >> doc hold)
% visualize track on top of ValleyDem


