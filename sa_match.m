function [ cor ] = sa_match( descr1, descr2 )
%sa_match 
%   SIFT matching
% Author: Yizhou Wang

descr1=uint8(512*descr1) ;
descr2=uint8(512*descr2) ;
matches=siftmatch( descr1, descr2 ) ;

cor = size(matches, 2);

end

