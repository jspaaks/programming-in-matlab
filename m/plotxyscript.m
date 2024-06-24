clear
close all
clc

x=[9.46,11.17,15.69,18.95,20.71];
y=[0.95,0.23,0.61,0.49,0.73];


figure('position',[401   237   511   151])
plot(x,y,'--ok')
xlabel('x-axis')
ylabel('y-axis')

set(gca,'xtick',[5:5:25],'xlim',[min(x),max(x)],...
    'ytick',[sort(y)],'ylim',[0.2,1])

set(gcf,'PaperPositionMode','auto')
print('.\..\eps\plotxy.eps','-deps','-r0')


figure('position',[401   237   511   151])
plot(y,'--ok')
xlabel('x-axis')
ylabel('y-axis')

set(gca,'xtick',[1:5],'xlim',[1,5],...
    'ytick',[sort(y)],'ylim',[0.2,1])


set(gcf,'PaperPositionMode','auto')
print('.\..\eps\ploty.eps','-deps','-r0')


