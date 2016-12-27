function [  ] = sift_test( im1, im2 )
%sift_test 
%   test function of sift correspondence
% Author: Yizhou Wang

I1=im2double2gray(im1) ;
I2=im2double2gray(im2) ;

I1=I1-min(I1(:)) ;
I1=I1/max(I1(:)) ;
I2=I2-min(I2(:)) ;
I2=I2/max(I2(:)) ;

tic;
[frames1,descr1,gss1,dogss1] = sift( I1, 'Verbosity', 0 ) ;
[frames2,descr2,gss2,dogss2] = sift( I2, 'Verbosity', 0 ) ;
fprintf('SIFT completed in %.3f s\n', toc) ;

figure(11) ; clf ; plotss(dogss1) ; colormap gray ;
figure(12) ; clf ; plotss(dogss2) ; colormap gray ;
drawnow ;

figure(2) ; clf ;
subplot(1,2,1) ; imagesc(I1) ; colormap gray ;
hold on ;
h=plotsiftframe( frames1 ) ; set(h,'LineWidth',2,'Color','g') ;
h=plotsiftframe( frames1 ) ; set(h,'LineWidth',1,'Color','k') ;

subplot(1,2,2) ; imagesc(I2) ; colormap gray ;
hold on ;
h=plotsiftframe( frames2 ) ; set(h,'LineWidth',2,'Color','g') ;
h=plotsiftframe( frames2 ) ; set(h,'LineWidth',1,'Color','k') ;

tic;
descr1=uint8(512*descr1) ;
descr2=uint8(512*descr2) ;
matches=siftmatch( descr1, descr2 ) ;
fprintf('Match completed in %.3f s\n', toc) ;

figure(3) ; clf ;
plotmatches(I1,I2,frames1(1:2,:),frames2(1:2,:),matches) ;
drawnow ;

% dist = size(matches, 2) ;

end

