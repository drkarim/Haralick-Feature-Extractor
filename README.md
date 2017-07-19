# Haralick feature extractor
This program takes a 3D Medical image (in NifTII format) and performs a Haralick feature extraction as well producing image histograms. 

It also plots the different Haralick features against each other. 

## Bug report
It is possible to select a Haralick feature, threshold it and display the resulting image. However, this feature has bugs. 

## Usage 
The usage is through command line: 
```

```

## Image requirements 
This program outputs the total number of pixels and volume in mm^3 in label ```t1``` by obtaining the image resloution. 
All input image files are either NifTII or GIPL or HDR Analyze. 

## Parameters 
the ```<mask image>``` is an image with labels 1,2,3 and so on. the ```<label in mask image>``` specifies which label you wish to calculate the volume for

## Output 
The program optionally accepts a filename to which it can write the volume. 

## Testing
Not tested fully

## Author 
```
Mr. Zubayr Khan and Dr. Rashed Karim 
Department of Biomedical Engineering 
King's College London 
```
