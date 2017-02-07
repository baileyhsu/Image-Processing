A=imread('obama.jpg')
A_gray=rgb2gray(A);
st=strel('square',6);
A_erosion=imerode(A_gray,st);
A_dilation=imdilate(A_gray,st)
A_outline = A_gray-A_erosion;
A_outline2= A_dilation-A_gray

imshowpair(A_gray, A_outline2, 'montage');
