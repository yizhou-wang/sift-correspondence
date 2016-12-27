function [ I ] = im2double2gray( im )
%im2double2gray 
%   image double to gray

I=im2double(im) ;

if(size(I,3) > 1)
  I = rgb2gray( I ) ;
end

end

