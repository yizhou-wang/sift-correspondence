% image preprocessing
% down sampling etc.
% Author: Yizhou Wang

% clear; clc;

imagefiles = [dir('data_sel/*.JPG'); dir('data_sel/*.jpg')];      
n_images = length(imagefiles);    % Number of files found
% sampleto = 64;

for im = 1:n_images
    
    current_name = imagefiles(im).name;
    n = str2num(current_name(5:7));
    
    cur_image = imread(strcat('data_sel/', current_name));
    cur_image = imresize(cur_image, [sampleto, sampleto]);
    if n <= 50
        imwrite(cur_image, ...
            strcat('data_reshape/ref/', current_name(1:end-4), ...
            '_', num2str(sampleto), '.jpg'));
    elseif n > 50 && n <= 60
        imwrite(cur_image, ...
            strcat('data_reshape/test/', current_name(1:end-4), ...
            '_', num2str(sampleto), '.jpg'));
    end
        
end
