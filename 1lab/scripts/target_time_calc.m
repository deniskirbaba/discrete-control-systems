target_y = 1;
max_deviation = 0.0001;
target_time = 0;

reach_target = false;

for i = 1:length(out.yout{1}.Values.Data)
    cur = out.yout{1}.Values.Data(i);
    if reach_target
        if abs(cur - 1) > max_deviation
            target_time = out.yout{1}.Values.Time(i);
        end
        continue
    end
    if cur > (1 - max_deviation)
        reach_target = true;
        target_time = out.yout{1}.Values.Time(i);
    end
end

target_time