classdef Predator
    %Implmentation of the Lotka-Voltera predator model
    %   Detailed explanation goes here
    
    properties
        delta = 1.1;
        gamma = 0.1;
        time = 1;
        count;
    end
    
    methods
        function predator = Predator(c)
           %predator.delta = d;
            %predator.gamma = g;
            predator.count = c;
            %predator.time = t;
        end
        
        function gam = Gam(a, i)
            gam = i*a.gamma;
        end
    end
    
end

