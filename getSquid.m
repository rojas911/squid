function squid = getSquid (squidSize,clock)

parity = mod(clock,2);
if (parity ==0)

legSeperation = squidSize;

% Squid body points
squidPoint1 = [squidSize; 0; 1];
squidPoint2 = [0; squidSize; 1];
squidPoint3 = [0; -squidSize; 1];

% Squid left leg
squidPoint4 = [0; squidSize/2-legSeperation; 1];
squidPoint5 = [-squidSize; 0-legSeperation; 1];
squidPoint6 = [-2*squidSize; squidSize/2; 1];

% Squid right leg
legSeperation = squidSize;

squidPoint7 = [0; squidSize/2-legSeperation; 1];
squidPoint8 = [-squidSize; 0-legSeperation; 1];
squidPoint9 = [-2*squidSize; squidSize/2-legSeperation; 1];

else
% squidBody
squidPoint1 = [squidSize; 0; 1];
squidPoint2 = [0; squidSize; 1];
squidPoint3 = [0; -squidSize; 1];

% Squid left leg
squidPoint4 = [0; squidSize/2; 1];
squidPoint5 = [-squidSize; 0; 1];
squidPoint6 = [-2*squidSize; squidSize/2; 1];

% Squid right leg
legSeperation = squidSize;

squidPoint7 = [0; squidSize/2 - legSeperation; 1];
squidPoint8 = [-squidSize; 0 - legSeperation; 1];
squidPoint9 = [-2*squidSize; squidSize/2-legSeperation; 1];


endif
squid = [squidPoint1, squidPoint2, squidPoint3, squidPoint4, squidPoint5, squidPoint6, squidPoint7, squidPoint8, squidPoint9];
endfunction
