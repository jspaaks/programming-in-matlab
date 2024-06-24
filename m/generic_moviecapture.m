clear
close all
clc

% INITIALIZATION
figure
aviObj = avifile('testfile.avi','fps',5,'compression','none');

% DYNAMIC PART (WITH VISUALIZATION)
for k=1:100 % some iteration
    
    % some calculations that affect variable X go here
  
    % visualize the new X:
    imagesc(X)

    % force MATLAB to finish drawing the figure before continuing:
    drawnow
    
    % get the active part of the figure:
    frame = getframe(gcf);
    
    % add this frame to aviObj:
    aviObj = addframe(aviObj,frame); 
end

% close the avi file object:
aviObj = close(aviObj);






