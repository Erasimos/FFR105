function distance = GetDistance(p1, p2) 
            % Returns euclidean distance between two 2d points
            distance = sqrt((p1(1) - p2(1))^2 + (p2(2) - p1(2))^2);
end 