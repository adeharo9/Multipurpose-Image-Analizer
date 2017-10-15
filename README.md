# Multipurpose Image Analyzer

This multipurpose image analyzer is an asset of Matlab scripts/functions designed for CV interaction with low-resolution graphical content for Optical Character Recognition (OCR), image layer extraction and several other utilities.

##Features

### Optical Character Recognition (OCR)
In order to perform a proper OCR without the need of additional steps, the different functions provided in this repository offer a built-in noise filtering system, color flattering algorithms and image binarization. With this preprocessing, the OCR is granted for most languages with roman alphabet.

Despite not having full support, OCR algorithms have also been tested with several programming languages with an acceptable ratio of success.

### Image Layer Extraction
Another feature of this project is its capability to analyze and extract the different layers of color of an image following several criterion of equality and similarity, aiming at further object detection under the assumption that related objects share common color properties.

### Object Contour Detection
As a previous step to complex object detection, the problem of contour detection is nothing but a non-trivial challenge. The different scripts and functions aimed at this objective perform multiple rounds of image noise cancelling, color flattering and color projection in order to reveal the inherent contrast between different object, thus allowing to easily detect and divide the different regions of an image delimited by the different props, textures and objects present in it.

## Further improvement

### Optical Character Recognition (OCR)
OCR can be further improved by applying machine learning techniques to improve recognition of source code in several programming languages in a much more accurate way.

### Object Contour Detection
AI techniques could be applied to the case of object contour detection in order to be able to easily separate superposed objects which turn out to be challenging using traditional contouring algorithms.
