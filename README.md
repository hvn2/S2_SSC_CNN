# S2_SSS_CNN
 Official Python codes for the paper "Zero-shot {Sentinel-2} Sharpening Using A Symmetric Skipped Connection Convolutional Neural Network" in Proceeding of IGARSS 2020 (Virtual Symposion), September 2020.<br><br>
 **Authors:** Han V. Nguyen $^\ast \dagger$, Magnus O. Ulfarsson $^\ast$,  Johannes R. Sveinsson $^\ast$, and Jakob Sigurdsson $^\ast$ <br>
$^\ast$ Faculty of Electrical and Computer Engineering, University of Iceland, Reykjavik, Iceland<br>
$^\dagger$ Department of Electrical and Electronic Engineering, Nha Trang University, Khanh Hoa, Vietnam<br>
Email: hvn2@hi.is
## Abstract
 Sentinel-2 (S2) satellite constellations can provide multispectral images of 10 m, 20 m, and 60 m resolution for visible, near-infrared (NIR) and short-wave infrared (SWIR) in the electromagnetic spectrum. In this paper, we present a sharpening method based on a symmetric skipped connection convolutional neural network, called SSC-CNN, to sharpen 20 m bands using 10 m bands. The main advantage of SSC-CNN architecture is that it brings the features of the input branch to the output, thus improving convergence without using too many deep layers. The proposed method uses the reduced-scale combination of 10 m bands and 20 m bands, and the observed 20 m bands as the training pairs. The experimental results using two Sentinel-2 datasets show that our method outperforms competitive  methods in quantitative metrics and visualization.

**Please cite our work if you are interested**

@inproceedings{nguyen2020zero,
  title={Zero-shot sentinel-2 sharpening using a symmetric skipped connection convolutional neural network},
  author={Nguyen, Han V and Ulfarsson, Magnus O and Sveinsson, Johannes R and Sigurdsson, Jakob},
  booktitle={IGARSS 2020-2020 IEEE International Geoscience and Remote Sensing Symposium},
  pages={613--616},
  year={2020},
  organization={IEEE}
}

## Usage:
Run the jupyter notebook file and see the results.


 - Data (preprocessing in Matlab) are in folder *data*
     + Two real datasets are: **coastal** in coastalA_cell_RR.mat, **reykjavik** in reykjavik_cell_RR.mat
     + The data are in reduced scale
 - CNN models are in folder *models*
 - Results prenstented in the paper are in folder *results*

## Enviroment:

- Tensorflow 2.0
- Numpy
- Scipy, Skimage
