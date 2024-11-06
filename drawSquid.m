function graphicsHandle = drawSquid (squidSize, deltaX, deltaY, theta, squidColor, squidWidth)

% get the squid points for a squid of size squidSize from getSquid
 squid = getSquid(squidSize);

% Rotate the squid be an angle theta
R = getRotate(theta);
squid = R*squid;

% Translate the squid by deltaX from the orgin
T = getTranslate(deltaX,deltaY);
squid = T*squid;

% draw squid body points
p1 = squid(:,1);
p2 = squid(:,2);
p3 = squid(:,3);

testColor = [1 0 0];

lineHandle1 = drawLine(p1,p2,testColor,squidWidth);
lineHandle2 = drawLine(p2,p3,testColor,squidWidth);
lineHandle3 = drawLine(p3,p1,testColor,squidWidth);

% draw squid left leg
p4 = squid(:,4);
p5 = squid(:,5);
p6 = squid(:,6);

lineHandle4 = drawLine(p4,p5,squidColor,squidWidth);
lineHandle5 = drawLine(p5,p6,squidColor,squidWidth);

% draw squidright leg
p7 = squid(:,7);
p8 = squid(:,8);
p9 = squid(:,9);

lineHandle6 = drawLine(p7,p8,squidColor,squidWidth);
lineHandle7 = drawLine(p8,p9,squidColor,squidWidth);

graphicsHandle = [lineHandle1,lineHandle2,lineHandle3,lineHandle4,lineHandle5,lineHandle6,lineHandle7];

endfunction
