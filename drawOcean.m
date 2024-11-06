function [oceanHeight,oceanWidth] = drawOcean (imageName)

clf
figure(1)
image = imread(imageName);

[oceanHeight,oceanWidth] = size(image);

imshow(imageName)
endfunction
