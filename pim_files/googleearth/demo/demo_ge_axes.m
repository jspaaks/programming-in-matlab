function demo_ge_axes()

kmlStrCARTESIAN = ge_axes('axesType','xyz',...
                    'xTick',5+[0:0.2:1.5],...
                    'yTick',52+[0:0.1:1.5],...
                    'zTick',[4e5:1e4:5e5],...
              'msgToScreen',true,...
              'xyLineColor','FF0000FF',...
              'xzLineColor','FF00FF00',...
              'yzLineColor','FFFF0000',...
                'lineWidth',3);
                
kmlStrRADIAL = ge_axes('axesType','h',...
                 'hTick',linspace(0,180,10),...
                 'axesOrigin',[4,52,1e4],...
                 'hAxisLength',1,...
              'msgToScreen',true,...
                'lineWidth',1);
            
kmlFileName = 'demo_ge_axes.kml';
kmlTargetDir = [''];%..',filesep,'kml',filesep];

ge_output([kmlTargetDir,kmlFileName],[kmlStrCARTESIAN,kmlStrRADIAL],'name',kmlFileName);

