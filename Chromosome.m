classdef Chromosome
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties(Constant)
        %probabilities
        prDroughts = 0.1;
        prStarvation = 0.1;
        prFires = 0.1;
        prTourist = 0.1;
        
        %per km square
        costOfLand = 1000;
        costOfGrass = 200;
        costOfAnimals = [2000, 3000];
        
        %species related data
        drawOfSpecies = [2,3,5];
        carryingCapacityForSpecies = [50,79,12];
        prPoaching = [0.1,0.3];
        
        dailyPricePerTourist = 600;
    end
    
    properties
        isSimulated = 0;
        profit = 0;
        landArea;
        predator;
        prey;
        generation;
    end
    
    methods
        function chromosome = Chromosome(land, pred, pre, gene)
            chromosome.landArea = land;
            chromosome.predator = pred;
            chromosome.prey = pre;
            chromosome.generation = gene;
        end
        
        function [profit, pred, pre, obj] = simulate(obj,years)
            if(obj.isSimulated == 0)
                pred = zeros(years+1);
                pre = zeros(years+1);
                pred(1) = obj.predator.count;
                pre(1) =  obj.prey.count;
                
                for i = 2:years
                    pred(i+1) = K(i) + dt*K(i)*(a-b*W(i));
                    pre(i+1) = W(i) + dt*W(i)*(-c+d*K(i));
                end;
                obj.isSimulated = 1;
            else
                
            end
        end
        
        function result = isEqual(obj, obj1)
            
        end
        
        function obj = mutate(obj)
            
        end
    end
    
end

