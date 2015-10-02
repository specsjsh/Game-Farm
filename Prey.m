classdef Prey
    %Implmentation of the Lotka-Voltera prey model
    %   Detailed explanation goes here
    
    properties
        alpha = 1.2;
        beta = 0.1;
        time = 0;
        count;
    end
    
    methods
           function prey = Prey(c)
           % prey.alpha = a;
            %prey.beta = b;
            prey.count = c;
            %prey.time = t;
        end
    end
    
end

