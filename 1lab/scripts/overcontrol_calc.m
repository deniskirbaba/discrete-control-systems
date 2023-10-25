target_y = 1;
max_overcontrol = 0;

reach_target = false;

for i = 1:length(out.yout{1}.Values.Data)
    cur = out.yout{1}.Values.Data(i);
    if reach_target
        max_overcontrol = max(max_overcontrol, (cur - 1) * 100);
        continue
    end
    if cur > 1 
        reach_target = true;
        out.yout{1}.Values.Time(i)
        max_overcontrol = max(max_overcontrol, (cur - 1) * 100);
    end
end

max_overcontrol
