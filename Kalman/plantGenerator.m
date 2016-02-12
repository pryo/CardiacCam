function Plant = plantGenerator(cellNum,nodeNum, transfer_matrix )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%This is for simple kalman test, assuming 9 cell
%cellNum = 9;
%nodeNum = 3;
width = sqrt(cellNum);
%A = eye(cellNum);
%C = zeros(nodeNum,cellNum);
indexMatrix = reshape((1:1:cellNum),width,width)';
%process matrix
processMatrix = zeros(cellNum,cellNum);
for i = indexMatrix(2:end-1,2:end-1)
    processMatrix(i,:) = rowsForMiddle(i,cellNum);
end
for i = 1:width
    if i ==1||i==width
        for j = indexMatrix(i,:)
            processMatrix(j,:) = rowsForRim(j,width);
        end
    else 
        processMatrix(indexMatrix(i,1),:) = rowsForRim(indexMatrix(i,1),width);
        processMatrix(indexMatrix(i,width),:) = rowsForRim(indexMatrix(i,width),width);
    end
end
Plant = ss(processMatrix,0,transfer_matrix,0,-1);


end

