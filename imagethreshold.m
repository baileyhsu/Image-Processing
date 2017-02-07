% read in the image

A=imread('Lenna.png');

% convert to grayscale
A_gray=rgb2gray(A);

%convert into double format
A_double = im2double(A_gray);

%Get Otzu_level(best threshold level)
ostu_level=graythresh(A_gray);

%Output the binary
B_otsu_thres =im2bw(A_gray,ostu_level);
B_threshold_50 =im2bw(A_gray,50/255);
B_threshold_100 =im2bw(A_gray,100/255);
B_threshold_150 =im2bw(A_gray,150/255);
B_threshold_200 =im2bw(A_gray,200/255);

figure, subplot(3,2,1), imshow(A_gray), title('original');
subplot(3,2,2),imshow(B_otsu_thres), title('Binary using otsu');
subplot(3,2,3),imshow(B_threshold_50), title('Binary using threshold value= 50');
subplot(3,2,4),imshow(B_threshold_100), title('Binary using threshold value= 100');
subplot(3,2,5),imshow(B_threshold_150), title('Binary using threshold value= 150');
subplot(3,2,6),imshow(B_threshold_200), title('Binary using threshold value= 200');