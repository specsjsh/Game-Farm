function chromosomes = reproduce(chromosomes, generation)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

set1 = selectCandidates(chrommosomes);
set2 = selectCandidates(chromososmes);

if(size(set1,2) > size(set2,2))
    stop = size(set2,2);
else stop = size(set1,2);
end

for i = 1:stop
   children = doCrossOver(set1(i), set2(i), generation);
   chromosomes(size(chromosomes,2)+1) = children(1);
   chromosomes(size(chromosomes,2)+1) = children(2);
end
end

function [child1,child2] = doCrossOver(parent1, parent2, generation)
child1 = Chromosome(parent1.land, parent2.pred,parent2.prey, generation);
child2 = Chromsome(paren2.land, parent1.pred, parent1.prey, generation);

child1 = child1.mutate;
child2 = child2.mutate;
end

function candidates = selectCandidates(chromosomes)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
j = 1;
for i = 1 : size(chromosomes,2)/2
    if(rand > 0.5)
        candidates(j) = chromosomes(i);
        j = j+1;
    end
end

end