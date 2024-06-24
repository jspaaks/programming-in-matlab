clear       % clear the workspace
close all   % close any open figures
clc         % clean up the command window

% initialize the longitude vector:
lonVec = [3,4,5];

% initialize the latitude vector:
latVec = [32.5:0.25:33.25];

% initialize the data:
matrix4x3 = [1,2,3;4,5,6;7,8,9;10,11,12];

% generate KML formatted text:
kmlStr = ge_imagesc(lonVec,latVec,matrix4x3);

% write the KML to file:
ge_output('example_ge_imagesc.kml',kmlStr)

% the kml file should display similar to this:
figure
imagesc(lonVec,latVec,flipud(matrix4x3))
xlabel('longitude')
ylabel('latitude')
title('example of imagesc')
colorbar
set(gca,'ydir','normal') % make sure the y-axis increases 
                         % upward, instead of downward.
