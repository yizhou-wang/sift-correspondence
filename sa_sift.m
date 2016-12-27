function [ descr ] = sa_sift( im )
%sa_sift 
%   get sift descriptor
% Author: Yizhou Wang

I=im2double2gray(im) ;
I=I-min(I(:)) ;
I=I/max(I(:)) ;

[frames,descr,gss,dogss] = sift( I );

end

