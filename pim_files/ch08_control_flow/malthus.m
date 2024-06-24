clear         % clear the workspace
close all     % close any open figures
clc           % clear the command window

% INITIALIZATION
% define population growth parameters:
GrowthRate = 0.54    % growth rate under ideal circumstances
Pop(1) = 10000       % population size
MaxPop = 3e5         % carrying capacity

% define time variables:
EndTime = 25         % end of the growth simulation

% DYNAMIC PART
for t=2:EndTime
    Verhulst = 
end

% VISUALIZATION
figure
plot(1:EndTime,Pop,'ro')
xlabel('time [years]')
ylabel('population size')