% Example while-loop
Steps = 0;
Value = 0;
MaxValue = 200;

while Value < MaxValue
    Value = Value + rand;
    Steps = Steps + 1;
end

disp(['Maximum value reached. Steps = ',num2str(Steps)])
