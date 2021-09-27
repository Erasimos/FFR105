function distance = GetDistance(node1, node2, cityLocation)
            p1 = cityLocation(node1,:);
            p2 = cityLocation(node2,:);
            distance = sqrt((p1(1) - p2(1))^2 + (p1(2) - p2(2))^2);
end 