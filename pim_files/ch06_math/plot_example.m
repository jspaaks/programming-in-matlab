%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % Example to show some properties of the plot function
% % W. Bouten, UvA, dec 2003
% % Course: Programming in MATLAB
% %
% % File: '\ch06_math\plot_example.m'
% % MATLAB version 2006a (win32)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INITIALIZATION PART:
clear                                       % clear the workspace variables
close all                                   % close any open figures
clc                                         % clear the command window


% DYNAMIC PART/ CALCULATIONS:
Trigo = transpose(linspace(-2*pi,2*pi,60)); % fill first column of matrix
Trigo(:,2) = sin(Trigo(:,1));               % assign the sine to the second column
Trigo(:,3) = cos(Trigo(:,1));
Trigo(:,4) = tan(Trigo(:,1));


% VISUALIZATION PART:
figure
plot(Trigo(:,1),Trigo(:,2), 'b-')           % plot a blue (b) line (-) for the sine
axis([-8,8,-1.5,1.5])                       % set the ranges of the x- and y-axes
xlabel('independent variable')              % assign label to the x-axis
ylabel('math function')                     % assign label to the y-axis
hold on                                     % keep the plot while plotting the next
plot(Trigo(:,1),Trigo(:,3), 'k+-',...       % (the dots mean that the 
     Trigo(:,1),Trigo(:,4)/10, 'r*')        % line continues)
     
% add a legend next to the plot, the position is 
% indicated by -1, see help documentation
legend('sine','cosine','tangent/10',-1)
