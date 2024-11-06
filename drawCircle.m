function graphicsHandle = drawCircle (radius, xCenter, yCenter, lineColor, lineWidth)

  lineSegments = 50;
  deltaTheta = 2*pi/lineSegments;
  theta = [0:deltaTheta:2*pi];

  % x and y coordinates of the unit circle
  cosTheta = cos(theta);
  sinTheta = sin(theta);
  % x and y coordinates of the circle of radius r about the orgin
  x = radius*cosTheta;
  y = radius*sinTheta;
  z = ones(1,length(x));

  %creat a matrix with all the x coordinates on the first rows
  % all the y coordinates on the second row.
  circleMatrix = [x;y;z];

  %get the translation matrix
  t = getTranslate(xCenter,yCenter);

  %translate the circle
  circleMatrix = t*circleMatrix;
  % extract the x and y coordinates of te translated circle
  x = circleMatrix(1,:);
  y = circleMatrix(2,:);

graphicsHandle = line (x,y);
% set the color & width of the line
set(graphicsHandle, 'Color', lineColor);
set(graphicsHandle, 'LineWidth', lineWidth);


endfunction
