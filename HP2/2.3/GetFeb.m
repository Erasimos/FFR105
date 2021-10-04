function Feb = GetFeb(gear, Cb)
        switch gear
            case 1
                Feb = 7.0*Cb;
            case 2
                Feb = 5.0*Cb;
            case 3
                Feb = 4.0*Cb;
            case 4
                Feb = 3.0*Cb;
            case 5
                Feb = 2.5*Cb;
            case 6
                Feb = 2.0*Cb;
            case 7
                Feb = 1.6*Cb;
            case 8
                Feb = 1.4*Cb;
            case 9
                Feb = 1.2*Cb;
            case 10
                Feb = Cb;
        end 
end 