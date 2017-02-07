%read in the image

A=imread('lenna.png');

%convert to the one channel gray"

A_gray=rgb2gray(A);

%do sobel edge
A_sobel = edge(A_gray,'sobel');

%do prewitt ed
A_prewitt = edge(A_gray,'prewitt');

%do canny ed
A_canny= edge(A_gray,'canny');

%plot
subplot(2,2,1),imshow(A_gray),title('original');
subplot(2,2,2),imshow(A_sobel),title('sobel');
subplot(2,2,3),imshow(A_prewitt),title('prewitt');
subplot(2,2,4),imshow(A_canny),title('canny');

 