function row = rowsForMiddle(cellIndex,cellNum)
row = zeros(1,cellNum);
row(cellIndex+1)=1;
row(cellIndex-1)=1;
row(cellIndex+sqrt(cellNum)+1)=1;
row(cellIndex+sqrt(cellNum)-1)=1;
row(cellIndex-sqrt(cellNum)+1)=1;
row(cellIndex-sqrt(cellNum)-1)=1;
row(cellIndex+sqrt(cellNum))=1;
row(cellIndex-sqrt(cellNum))=1;

end