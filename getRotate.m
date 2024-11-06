function R = getRotate (theta)

  % the input angle theta must be in radians
  % getRotate returns the rotation matrix to rotate by
  % theta radians

  R = [ cos(theta), -sin(theta), 0;sin(theta), cos(theta), 0; 0, 0, 1];

endfunction
