# SIFT Correspondence: Scene Alignment using Key-point Matching
### Author: Yizhou Wang

This is the source code and dataset for SIFT Correspondence. Please cite when using my code.

## Abstract

While image alignment has been studied in different areas for decades, aligning images depicting different scenes remains a challenging problem. In this project, we propose SIFT correspondence, a method to align an image to its nearest neighbors in reference image group containing a variety of scenes. The SIFT correspondence consists of matching pixel-wise SIFT features between two images. Experiments for evaluating the algorithm is implemented on a image dataset containing 10 buildings on Columbia University campus. Experimental results show that robust building recognition can be achieved in cell- phone photographed images with a computational time of about 1.2 seconds and accuracy over 90%.

## Dataset

Our project is to align images of Columbia University buildings, we decide to choose 10 most typical buildings on campus: Butler Library, IAB (International Affairs Building), Law Library, Alfred Lerner Hall, Low Library, Mudd Building, NWC (Northwest Corner Building), Pupin Hall, Schapiro Hall, Uris Hall. During the dataset collection stage, we took pictures from different angles of the buildings at different time of the day by different equipments. For each of the building, 50 reference images and 10 test images are taken, thus this 600 images consist of our raw dataset.

## SIFT Correspondence

Proceesing the images by SIFT provides us with descriptors of each image. The descrptors are in the frames of 2 × M matices and we utilize the SIFT match function to compare the descriptors of two images so that we are able to get matches of these two.
Then we define SIFT correspondence of two images as the number of matched key-points between two images. SIFT corespondence is a useful tool to describe the correspondent objects or scenes in two images.
In the following report, we use SIFT correspondence to accomplish scene alignment on Columbia University campus to show the performance of this method.

## Results

| Image Size (pixel) | Test Accuracy | SIFT Time | Matching Time |
|:------------------:|:-------------:|:---------:|:-------------:| 
| 16 * 16            | 10%           | 1.733ms   | 29.24ms       |
| 32 * 32            | 27%           | 4.107ms   | 37.22ms       |
| 48 * 48            | 41%           | 9.213ms   | 48.31ms       |
| 64 * 64            | 70%           | 15.010ms  | 109.97ms      |
| 80 * 80            | 89%           | 27.987ms  | 292.83ms      |
| 96 * 96            | 92%           | 37.998ms  | 605.70ms      |
| 112 * 112          | 93%           | 53.523ms  | 1207.37ms     |
| 128 * 128          | 90%           | 68.080ms  | 2397.23ms     |
| 144 * 144          | 91%           | 93.008ms  | 3592.07ms     |

## Reference

[1] Vedaldi, A., 2007. An open implementation of the SIFT detector and descriptor. UCLA CSD.

[2] Liu C., Yuen J. and Torralba A., 2011. Sift flow: Dense correspondence across scenes and its applications. IEEE transactions on pattern analysis and machine intelligence, 33(5), pp.978-994.

[3] Lowe D.G., 1999. Object recognition from local scale-invariant features. Computer vision, 1999. The proceedings of the seventh IEEE international conference (Vol. 2, pp. 1150-1157). Ieee.
