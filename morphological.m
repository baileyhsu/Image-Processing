%read in image

A=imread('Lenna.png');
B=imread('convex_hull_calculation_01.png');

%to gray scale

A_gray=rgb2gray(A);
B_gray=rgb2gray(B);
size(B_gray)
%Structuring element
se= strel('diamond',3);
se2=strel('square',1);
%erosion
A_erosion = imerode(A_gray, se);
B_open = imopen(B_gray, se2);
%dilation
A_dilation = imdilate(A_gray, se);
B_close = imclose(B_gray, se2);
subplot(1,3,1), imshow(A_gray), title('gray scale image');
subplot(1,3,2),imshow(A_erosion),title('eroded image');
subplot(1,3,3),imshow(A_dilation),title('dilated image');
figure
subplot(1,3,1), imshow(B_gray), title('gray scale image');
subplot(1,3,2),imshow(B_open),title('opened image');
subplot(1,3,3),imshow(B_close),title('close image');
