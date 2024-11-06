function fishHandle = drawFish (input1, input2)

  linesegment = 50;
  deltaTheta = 2*pi/linesegment;
  mouthTheta = [mouthTheta:deltaTheta:2*pi-mouthTheta];

  % X and Y coordinates of the unit circle
  cosThetha = cos(theta);
  sinTheta = sin(theta);

  % x and y coordinates of the circle of radius r about the origin
  x = radius*cosTheta;
  y = radius*sinTheta;
  z = ones(1,length(x));

  % creat a matrix with all the x coordiantes on the first rows

  % all the y coordiantes on the second row

  circleMatrix = [x;y;z];

  %get the translation matrix

  T = getTranslate(xCenter,yCenter);

  %translate the circle

  circleMatrix = T*circleMatrix;

  % extract the x and y cordinates of the translated circle

  x = circleMatrix(2,:);
  y = circleMatrix(2,:);

  x = [x,xCenter,x(1)];
  y = [y,yCenter,y(1)];

  % circle of radius r about the xCenter, yCenter

  fishBodyHandle = line(x,y);

  %tail
  xTail(1) = x(round(length(x)/2));
  yTail(1) = y(round(length(y)/2));

  xTail(2) = xTail(1)-radius ;
  yTail(2) = yTail(1)+radius ;

  xTail(3) = xTail(1)-radius;
  yTail(3) = yTail(1)-radius;

  xTail(4) = xTail(1);
  yTail(4) = yTail(1);

  fishTailHandle = line(xTail,yTail);

  fishHandle = [fishBodyHandle,fishTailHandle];

  set(fishHandle,'Color',lineColor);
  set(fishHandle,'LineWidth',LineWidth);


endfunction
