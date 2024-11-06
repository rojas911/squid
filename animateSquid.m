function animateSquid()

[oceanHeight,oceanWidth] = drawOcean("OceanImage.png");

% current
current = 50;

% fish
fishSize = 40;
fishLineWidth = 5;
fishX = 500;
fishY = 200;
fishColor = [.5 0 .8];


% squid drawing parameters
squidColor = [.2 .1 .6];
squidWidth = 3;
squidSize = 60;

% squid movement resolutions
squidForwardMove = 100;
squidDeltaTheta = pi/3;

% initial squid location and heading
squidX = 300;
squidY = 500;
squidTheta = 0;

% animate loop
for (clock = 1:500)

% updates squid heading and position
squidTheta = squidTheta +squidDeltaTheta;
squidX = squidX + squidForwardMove*cos (squidTheta);
squidY = squidY + squidForwardMove*sin (squidTheta);
squidX = squidX + current;

% check if the squid stays in the Ocean
if(squidX>oceanWidth-2*squidSize)
squidX = 2*squidSize;
endif

% draw the squid
squidHandle = drawSquid(squidSize,squidX,squidY,squidTheta,squidColor,squidWidth);

% draw fish
fishHandle = drawFish (fishX, fishY, fishSize, fishColor, fishLineWidth);
fishX = fishX + current;

% fish stays in the ocean
if(fishX>=oceanWidth-3*fishSize)
fishX = 3*fishSize;
endif

% Bubble paramiters
bubbleNumber = 7;
bubbleColor = [.9 .9 .9 ];
bubbleWidth = 2;
bubbleMaxRadius = 20;
bubbleMinRadius = 5;
bubbleMoveFoward = 50;

% Move bubble
 for i = 1:bubbleNumber
   bubbleRadius(i) = (bubbleMaxRadius-bubbleMinRadius)*rand+bubbleMinRadius;
   bubbleY(i) = oceanHeight*rand();
   bubbleX(i) = oceanWidth*rand();
 endfor

 % Draw bubble
 for i = 1:bubbleNumber

 bubbleHandle(i) = drawCircle(bubbleRadius(i),bubbleX(i),bubbleY(i),bubbleColor,bubbleWidth);
 endfor

 % pause so we can see the squid
 pause(.1);


 % delete the old squid
 delete(squidHandle);
 delete(bubbleHandle);
 delete(fishHandle);

 endfor

endfunction
