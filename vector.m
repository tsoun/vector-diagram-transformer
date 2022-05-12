classdef vector
properties
    Head
    Tail
    Type
    Angle
    Length
    Name
end
    methods
        function vplot(obj)
            dp = obj.Head - obj.Tail;
            q = quiver(obj.Tail(1), obj.Tail(2), ...
                dp(1), dp(2), 0, ...
                'linewidth', 0.6);
            if obj.Type == 'Voltage'
                q.Color = 'red';
            else 
                q.Color = 'blue';
            end
            mid = (obj.Tail(:) + obj.Head(:)).'/ 2;
            text(mid(1), mid(2), obj.Name)
            hold on
            axis equal
            grid on
        end
        function q = setHead(obj)
            q = [sin(deg2rad(obj.Angle))*obj.Length + obj.Tail(1); cos(deg2rad ...
                (obj.Angle))*obj.Length + obj.Tail(2)];
        end
    end
end