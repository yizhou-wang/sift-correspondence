% error1
% im1 = imread('data_reshape/ref/law_033_112.jpg');
% im2 = imread('data_reshape/test/but_052_112.jpg');

% error2
% im1 = imread('data_reshape/ref/but_049_112.jpg');
% im2 = imread('data_reshape/test/law_057_112.jpg');

% error3
% im1 = imread('data_reshape/ref/low_009_112.jpg');
% im2 = imread('data_reshape/test/ler_053_112.jpg');

% error4
% im1 = imread('data_reshape/ref/uri_020_112.jpg');
% im2 = imread('data_reshape/test/ler_057_112.jpg');

% error5
% im1 = imread('data_reshape/ref/law_030_112.jpg');
% im2 = imread('data_reshape/test/ler_060_112.jpg');

% error6
% im1 = imread('data_reshape/ref/law_031_112.jpg');
% im2 = imread('data_reshape/test/low_051_112.jpg');

% error7
% im1 = imread('data_reshape/ref/but_019_112.jpg');
% im2 = imread('data_reshape/test/pup_053_112.jpg');

im1 = imread('data_reshape/ref/iab_021_112.jpg');
im2 = imread('data_reshape/test/iab_052_112.jpg');

sift_test(im1, im2);