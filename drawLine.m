function graphicsHandle = drawLine (pt1,pt2,color,width)

% Extracts the X component from the pt1 and pt2
x = [ pt1(1),pt2(1) ];

% Eztracts the Y component from the pt1 and pt2
y = [ pt1(2),pt2(2) ];

% Draws the line between pt1 and pt2
graphicsHandle = line (x,y);

% Set the color & width of the line
set(graphicsHandle, 'Color', color);
set(graphicsHandle, 'LineWidth', width);

endfunction
