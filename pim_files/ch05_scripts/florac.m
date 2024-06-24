%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This programme is an example of a Matlab script for Programming in Matlab
% W. Bouten, University of Amsterdam, December 2003
% Evapotranspiration in Florac
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear        % delete the variables from the workspace
close all    % close all open MATLAB figure windows
clc          % clear the contents of the command window

% %%%%%%%% INITIALIZATION %%%%%%%%%
load landuse_class.txt

% %%%%%%%% CALCULATIONS %%%%%%%%%%%
Meadow    = landuse_class == 0;   % logical array, true for Meadow
Evergreen = landuse_class == 1;   % logical array, true for Evergreen Forest
Deciduous = landuse_class == 2;   % logical array, true for Deciduous Forest

% calculate the transpiration by counting the number of cells sum(sum(X))
% and then multiplying with the area per cell and the transpiration per unit
% area
TrDeci     = sum(sum(Deciduous))*25*25*1.3e-3;
TrEverg    = sum(sum(Evergreen))*25*25*1.5e-3;
TrMeadow   = sum(sum(Meadow))*25*25*0.8e-3;
TotTrans   = TrDeci + TrEverg + TrMeadow;

% calculate the fractions
FTrDeci    = TrDeci/TotTrans;
FTrEverg   = TrEverg/TotTrans;
FTrMeadow  = TrMeadow/TotTrans;
FTr = [FTrDeci,FTrEverg,FTrMeadow];

% %%%%%%%% OUTPUT %%%%%%%%%%%%%%%%%
subplot(2,3,1)
imagesc(landuse_class)
colorbar

subplot(2,3,4)
imagesc(Meadow)
title('Meadow')

subplot(2,3,5)
imagesc(Evergreen)
title('Evergreen')

subplot(2,3,6)
imagesc(Deciduous)
title('Deciduous')

subplot(2,3,3)
barh(FTr) 
xlabel('Transpiration Fraction')
