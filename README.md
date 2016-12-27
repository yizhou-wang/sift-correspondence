# SIFT Correspondence: Scene Alignment using Key-point Matching
### Author: Yizhou Wang

This is the source code and dataset for SIFT Correspondence. 

## Abstract

While image alignment has been studied in different areas for decades, aligning images depicting different scenes remains a challenging problem. In this project, we propose SIFT correspondence, a method to align an image to its nearest neighbors in reference image group containing a variety of scenes. The SIFT correspondence consists of matching pixel-wise SIFT features between two images. Experiments for evaluating the algorithm is implemented on a image dataset containing 10 buildings on Columbia University campus. Experimental results show that robust building recognition can be achieved in cell- phone photographed images with a computational time of about 1.2 seconds and accuracy over 90%.

## Dataset

Our project is to align images of Columbia University buildings, we decide to choose 10 most typical buildings on campus: Butler Library, IAB (International Affairs Building), Law Library, Alfred Lerner Hall, Low Library, Mudd Building, NWC (Northwest Corner Building), Pupin Hall, Schapiro Hall, Uris Hall. During the dataset collection stage, we took pictures from different angles of the buildings at different time of the day by different equipments. For each of the building, 50 reference images and 10 test images are taken, thus this 600 images consist of our raw dataset.

## SIFT Correspondence

Proceesing the images by SIFT provides us with descriptors of each image. The descrptors are in the frames of 2 × M matices and we utilize the SIFT match function to compare the descriptors of two images so that we are able to get matches of these two.
Then we define SIFT correspondence of two images as the number of matched key-points between two images. SIFT corespondence is a useful tool to describe the correspondent objects or scenes in two images.
In the following report, we use SIFT correspondence to accomplish scene alignment on Columbia University campus to show the performance of this method.

## Results

| Image Size (pixel) | Test Accuracy |
| ------------------ |:-------------:|
| 16 * 16            | 10%           |
| 32 * 32            | 27%           |
| 48 * 48            | 41%           |
| 64 * 64            | 70%           |
| 80 * 80            | 89%           |
| 96 * 96            | 92%           |
| 112 * 112          | 93%           |
| 128 * 128          | 90%           |
| 144 * 144          | 91%           |

### Reference

Vedaldi, A., 2007. An open implementation of the SIFT detector and
descriptor. UCLA CSD.
