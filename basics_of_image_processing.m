I = imread('demo.jpg');   %load the image to ocatave workspace
n=size(I);                 %to determine the dimensions of the image
%
imshow(I)                 %display the image
%
Rchannel = I(:,:,1);      %extract R channel from the image
Gchannel = I(:,:,2);      %extract G channel from the image
Bchannel = I(:,:,3);      %extract B channel from the image
%
imwrite(Rchannel,'newimage1.jpg');  %create a new image in the workspace
J1=imread('newimage1.jpg');
imshow(J1)
%
imwrite(Bchannel,'newimage2.jpg', 'quality',50);  %create a new image with degradation in the quality of the image
J2=imread('newimage2.jpg');
imshow(J2)
%
I1 = imread('image1.jpg');
imshow(I1)
%
Gray = rgb2gray(I1);       %Gray from RGB image
imshow(Gray)
%
%size(Gray)

finalGray = mat2gray(Gray); % maps the contents of the matirx to the decimals between 0 an 1. These values indicates different shades of gray
imshow(finalGray)
%
negativeImage = imcomplement(I1);    % computes the negative of a image
imshow(negativeImage)
%
%
I2 = imread('edgeDetect.jpg');
imshow(I2)
%
K = rgb2gray(I2);
Gray1 = mat2gray(K);
%
BWsobel = edge(Gray1, 'sobel');        %finds the edges in the image using Sobel approximation
imshow(BWsobel)
%
BWcanny = edge(Gray1, 'canny');        %finds the edges using canny method
imshow(BWcanny)

%
%
K1=imread('testImage1.jpg');
R = K1(:,:,1);
G = K1(:,:,2);
B = K1(:,:,3);
%
red=mean(mean(R));
green=mean(mean(G));
blue=mean(mean(B));
%
K2=imread('testImage2.jpg');
R = K2(:,:,1);
G = K2(:,:,2);
B = K2(:,:,3);
%
red=mean(mean(R));
green=mean(mean(G));
blue=mean(mean(B));
%