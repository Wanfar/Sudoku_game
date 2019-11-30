function [shudu] = change_value(shudu,a,b)
%替换数值
[r,c] =  size(shudu)    % 读取行r、列c
    for i = 1:r        % 建立for循环嵌套
        for k = 1:c
            if shudu(i,k)==a
                shudu(i,k) = b
            elseif shudu(i,k)==b
                shudu(i,k) = a
            end
        end
    end
end