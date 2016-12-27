function [ loaded_image, labels ] = load_reshape( ref_or_test, n_cata, sampleto )
%load_reshape 
%   load reshaped images
% Author: Yizhou Wang

% Get list of all BMP files in this directory
% DIR returns as a structure array.  You will need to use () and . to get
% the file names.

imagefiles = [ ...
    dir(strcat('data_reshape/', ref_or_test, '/*', num2str(sampleto), '.jpg')); ...
    dir(strcat('data_reshape/', ref_or_test, '/*', num2str(sampleto), '.JPG'))];
n_images = length(imagefiles);    % Number of files found

but = cell(n_images / n_cata, 1);
iab = cell(n_images / n_cata, 1);
law = cell(n_images / n_cata, 1);
ler = cell(n_images / n_cata, 1);
low = cell(n_images / n_cata, 1);
mud = cell(n_images / n_cata, 1);
nwc = cell(n_images / n_cata, 1);
pup = cell(n_images / n_cata, 1);
sch = cell(n_images / n_cata, 1);
uri = cell(n_images / n_cata, 1);

% images = cell(n_images, 1);
labels = zeros(n_images / n_cata, n_cata);

for im = 1:n_images
    current_name = imagefiles(im).name;
    dir_name = strcat('data_reshape/', ref_or_test, '/', current_name);
    
    if strcmp(ref_or_test, 'ref')
        n = str2num(current_name(5:7));
    elseif strcmp(ref_or_test, 'test')
        n = str2num(current_name(5:7)) - 50;
    end
    
    if strncmpi(current_name, 'but', 3)
        but{n} = imread(dir_name);
        labels(n, 1) = 1;
    end
    if strncmpi(current_name, 'iab', 3)
        iab{n} = imread(dir_name);
        labels(n, 2) = 2;
    end
    if strncmpi(current_name, 'law', 3)
        law{n} = imread(dir_name);
        labels(n, 3) = 3;
    end
    if strncmpi(current_name, 'ler', 3)
        ler{n} = imread(dir_name);
        labels(n, 4) = 4;
    end
    if strncmpi(current_name, 'low', 3)
        low{n} = imread(dir_name);
        labels(n, 5) = 5;
    end
    if strncmpi(current_name, 'mud', 3)
        mud{n} = imread(dir_name);
        labels(n, 6) = 6;
    end
    if strncmpi(current_name, 'nwc', 3)
        nwc{n} = imread(dir_name);
        labels(n, 7) = 7;
    end
    if strncmpi(current_name, 'pup', 3)
        pup{n} = imread(dir_name);
        labels(n, 8) = 8;
    end
    if strncmpi(current_name, 'sch', 3)
        sch{n} = imread(dir_name);
        labels(n, 9) = 9;
    end
    if strncmpi(current_name, 'uri', 3)
        uri{n} = imread(dir_name);
        labels(n, 10) = 10;
    end
end

loaded_image = [but; iab; law; ler; low; mud; nwc; pup; sch; uri];
labels = reshape(labels, [n_images, 1]);

end

