%All the genetic algorithm code goes here

clear;
clc;

killRate = 0.2;
years = 5;
maximumLand = 5000;
initialPopulationSize = 1000;

predator = Predator(floor(rand *90));
prey = Prey(floor(rand* 120));
chromosomes(initialPopulationSize) = Chromosomes(rand*maximumLand, predator, prey);%preallocating size of array, for better performance
generationCount = 0;

for i = 1:initialPopulationSize-1%initialise population
    predator = Predator(floor(rand *90));
    prey = Prey(floor(rand* 120));
    chromosomes(i) = Chromosomes(rand*maximumLand, predator, prey, generationCount);
    output = chromosomes(i).simulate(years);
    chromosomes(i) = output(4);
end
generationCount = generationCount + 1;
chromosomes = insertionsort(chromosomes);

currBest = chromsomes(1);
prevBest = chromosomes(1);

disp(strcat('generation count: ',num2str(generationCount-1)));
currBest

while(~isEqual(currBest,prevBest) || (generationCount - currBest.generation) ~= 100)
%reproduce
chromosomes = reproduce(chromosomes, generationCount);
arrSize = size(chromosomes,2);
generationCount = generationCount+1;
%simulate
for i = 1:arrSize
    chromosomes(i).simulate(years);
end
insertionsort(chromosomes);
prevBest = currBest;
currBest = chromosomes(1);
disp(strcat('generation count: ',num2str(generationCount-1)));
currBest

%kill
stop = arrSize-(arrSize*killRate);
for i = arrSize:stop
chromosomes(i) = [];
end
end




