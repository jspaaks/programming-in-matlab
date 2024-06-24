function demo_ge_scatter()

rads = linspace(0,2*pi,6);
x = [1*sin(rads);0.6*sin(rads+0.2*pi)];
y = [1*cos(rads);0.6*cos(rads+0.2*pi)];
xShape = x(:);
yShape = y(:);
clear rads x y


kmlStr1 = ge_scatter(-180+180*rand(1000,1),90*rand(1000,1));

kmlStr2 = ge_scatter(-180+180*rand(1000,1),-90+90*rand(1000,1),...
           'marker','*',...
           'markerEdgeColor','FFFF00FF',...
           'markerFaceColor','80FF00FF',...
           'altitudeMode','relativeToGround');
       
kmlStr3 = ge_scatter(180*rand(1000,1),90*rand(1000,1),...
           'marker','o',...
           'markerEdgeColor','FF00FF00',...
           'name','green',...
           'markerScale',0.1);
       
kmlStr4 = ge_scatter(180*rand(1000,1),-90+90*rand(1000,1),...
           'markerEdgeColor','FFFFAB00',...
           'markerEdgeWidth',5,...
           'markerFaceColor','none',...
           'xUnitShape',xShape,...
           'yUnitShape',yShape);

ge_output(fullfile(googleearthroot,'kml','demo_ge_scatter.kml'),...
    [kmlStr1,kmlStr2,kmlStr3,kmlStr4])