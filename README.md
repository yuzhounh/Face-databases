# Face Databases Benchmark Dataset

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## Introduction
A comprehensive collection of benchmark face databases for face recognition and reconstruction research. This repository contains standardized datasets from various popular face databases with different resolutions and subject counts.

## Dataset Overview

### Face Databases
<div align="center">
  
| Database | Height | Width | NO. of imgs per sub | NO. of subjects |
|:--------:|:------:|:-----:|:------------------:|:---------------:|
| AR(I) | 50 | 40 | 26 | 120 |
| AR(II) | 60 | 43 | 14 | 99 |
| FEI | 48 | 64 | 14 | 100 |
| FERET | 80 | 80 | 7 | 200 |
| GT | 40 | 30 | 15 | 50 |
| IMM | 48 | 64 | 6 | 40 |
| LFW | 64 | 64 | 10 | 158 |
| ORL | 112 | 92 | 10 | 40 |
| PIE | 32 | 32 | 40 | 68 |
| UMIST | 112 | 92 | 19 | 20 |
| Yale | 100 | 100 | 11 | 15 |
| YaleB | 192 | 168 | 64 | 31 |

</div>

### Other Databases
<div align="center">
  
| Database | Height | Width | NO. of imgs per sub | NO. of subjects |
|:--------:|:------:|:-----:|:------------------:|:---------------:|
| BDL | 20 | 16 | 39 | 36 |
| COIL20 | 32 | 32 | 72 | 20 |
| MNIST | 28 | 28 | 7000 | 10 |

</div>

## Sample Images
Sample images from the AR(I) face database (50 × 40 × 26 × 120):

<div align="center">
<img src="https://github.com/yuzhounh/Face_databases/blob/main/samples/AR_all.svg" alt="AR Database Full Sample">

<img src="https://github.com/yuzhounh/Face_databases/blob/main/samples/AR_first.svg" alt="AR Database Individual Sample" width="70%">
</div>

## Usage

```matlab
% Run the following commands in Matlab

% Display face images
display_faces; 

% Resize images to width 32 while preserving aspect ratio
resize_faces; 
```

## References
1. [Face Recognition Homepage](https://www.face-rec.org/databases/)
2. [The Yale Face Database B](http://cvc.cs.yale.edu/cvc/projects/yalefacesB/yalefacesB.html)
3. [MNIST Database](https://en.wikipedia.org/wiki/MNIST_database)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact
- **Author:** Jing Wang
- **Email:** yuzhounh@163.com
- **Last Updated:** 2023-11-23

## Acknowledgments
We would like to thank the creators and maintainers of all the original face databases for making their datasets available for research purposes.
