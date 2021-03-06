function row = rowsForRim(cellIndex,width)
row = zeros(1,width*width);
%for upper rim
if cellIndex/width<=1
    % upleft
    if mod(cellIndex,width)==1
        row(cellIndex+1)=1;
        row(cellIndex+width)=1;
        row(cellIndex+width+1)=1;
    elseif mod(cellIndex,width)==0 %upright
        row(cellIndex-1)=1;
        row(cellIndex+width)=1;
        row(cellIndex+width-1)=1;
    else
        %middle
        row(cellIndex-1)=1;
        row(cellIndex+1)=1;
        row(cellIndex+width)=1;
        row(cellIndex+width+1)=1;
        row(cellIndex+width-1)=1;
    end
    
    %for lower rim
elseif cellIndex/width>width-1
    % downleft
    if mod(cellIndex,width)==1
        row(cellIndex+1)=1;
        row(cellIndex-width)=1;
        row(cellIndex-width+1)=1;
    elseif mod(cellIndex,width)==0         %downright
        
        row(cellIndex-1)=1;
        row(cellIndex-width)=1;
        row(cellIndex-width-1)=1;
    else
        %middle
        row(cellIndex-1)=1;
        row(cellIndex+1)=1;
        row(cellIndex-width)=1;
        row(cellIndex-width+1)=1;
        row(cellIndex-width-1)=1;
    end
else %for side colunm
    %left
    if mod(cellIndex,width)==1
        row(cellIndex+1)=1;
        row(cellIndex+width)=1;
        row(cellIndex+width+1)=1;
        row(cellIndex-width+1)=1;
        row(cellIndex+width)=1;
        row(cellIndex-width)=1;
    else
        %right
        row(cellIndex-1)=1;
        row(cellIndex+width)=1;
        row(cellIndex+width-1)=1;
        row(cellIndex-width-1)=1;
        row(cellIndex+width)=1;
        row(cellIndex-width)=1;
    end
end
end
