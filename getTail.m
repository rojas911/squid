function [tailX, tailY] = getTail (fishX, fishY, fishSize)

 lineSegments = 50;
  deltaTheta = 2*pi/lineSegments;
  theta = [0:deltaTheta:2*pi];

  % x and y coordinates of the unit circle
  cosTheta = cos(theta);
  sinTheta = sin(theta);
  % x and y coordinates of the circle of radius r about the orgin
  x = fishSize*cosTheta;
  y = fishSize*sinTheta;
  z = ones(1,length(x));

   %creat a matrix with all the x coordinates on the first rows
  % all the y coordinates on the second row.
  circleMatrix = [x;y;z];

  %get the translation matrix
  t = getTranslate(fishX,fishY);

  %translate the circle
  circleMatrix = t*circleMatrix;
  % extract the x and y coordinates of te translated circle
  x = circleMatrix(1,:);
  y = circleMatrix(2,:);

  tailX = x(25);
  tailY = y(25);


endfunction
