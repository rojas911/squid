function fishHandle = drawFish (fishX, fishY, fishSize, lineColor, lineWidth)
  tailSize = fishSize*2;

 fishHandle0 = drawCircle(fishSize, fishX, fishY, lineColor, lineWidth)

 [tailX, tailY] = getTail (fishX, fishY, fishSize);

 tailTopX = tailX - tailSize;
 tailTopY = tailY + tailSize;
 tailBottomX = tailX - tailSize;
 tailBottoomY = tailY - tailSize;

 p1 = [tailX; tailY; 1];
 p2 = [tailTopX; tailTopY;1];
 p3 = [tailBottomX; tailBottoomY; 1];


 tailHandle1 = drawLine (p1,p2,lineColor,lineWidth);
 tailHandle2 = drawLine (p2,p3,lineColor,lineWidth);
 tailHandle3 = drawLine (p3,p1,lineColor,lineWidth);

 fishHandle = [fishHandle0, tailHandle1, tailHandle2, tailHandle3];


endfunction
