% Main Function of Scene Alignment
% Author: Yizhou Wang

%% ENV init
clear; clc;
cata_num = 10;
sampleto = 112;

%% Image Preprocessing
fprintf('Image Preprocessing...\n') ;
% image_preprocess2;

%% Add sift package
addpath('sift_precomp')

%% Load reshaped images
[ref_images, ref_labels] = load_reshape('ref', cata_num, sampleto);
[test_images, test_labels] = load_reshape('test', cata_num, sampleto);

ref_num = size(ref_images, 1);
test_num = size(test_images, 1);
cor = zeros(test_num, ref_num);

ref_descr = cell(ref_num, 1);
test_descr = cell(test_num, 1);

%% Get SIFT descriptor
fprintf('SIFT processing...\n') ;
tic;
fprintf('  SIFT processing on reference images...\n') ;
for ref_list = 1:ref_num
    ref_descr{ref_list} = sa_sift(ref_images{ref_list});
end
fprintf('  SIFT processing on test images...\n') ;
for test_list = 1:test_num
    test_descr{test_list} = sa_sift(test_images{test_list});
end
fprintf('SIFT completed in %.3f s.\n', toc) ;

%% SIFT Matching
fprintf('Match processing...\n') ;
tic;
for test_list = 1:test_num
    
    fprintf('  Compute correspondence from test %d to ref...\n', ...
        test_list);
    tStart = tic;
    for ref_list = 1:ref_num
%         dist(test_list, ref_list) = ...
%             sift_dist(ref_images{ref_list}, test_images{test_list});
        cor(test_list, ref_list) = ...
            sa_match(ref_descr{ref_list}, test_descr{test_list});
    end
    fprintf('    Correspondence computed in %.3f s.\n', toc(tStart));
end
fprintf('Match completed in %.3f s.\n', toc) ;

%% Find 1-NN
[row_max, row_argmax] = max( cor, [], 2 );
% preds = ceil(row_argmin / (ref_num/cata_num));
preds = ref_labels(row_argmax);

%% Compute Accuracy
acc = sum(preds == test_labels) / test_num;
fprintf('Accuracy of Scene Alignment is %.4f %%.\n', acc * 100);
