# Seam-Carving
Seam Carving for Content-Aware Image Resizing

Content-Aware Image Resizing is a resizing method which does not resize image as ordinary manner. Instead of decrease resolution of image as uniform manner, it selects the least important non-flat line (seam) and remove it. On the result of the algorithm, the objects might have not original scale but it is obvious that the result consist most important object at initial scale, on the other hand unimportant part which are mostly flat and low energy, might almost disappear. This project is the reimplementation of research about content-aware resizing paper [1]. The main idea of that paper was to find non-flat line so called "seam" which has minimum energy using dynamic programming for both vertical and horizontal line. Horizontal or vertical seam which has minimum energy (the first horizontal and vertical pixels to be removed), would be removed step by step incrementally. So you can reach final desired resolution by applying both horizontal and vertical removing in desired order. The following figure shows the least energy seam or in other words the first lines to be removed for vertical and horizontal.


![Alt text](seam_resize.png?raw=true "Title")

## Run
To run the code, use following scripts;
```matlab
> seam_carving_decrease_height
```

or 

``` Matlab
> seam_carving_decrease_width 
```

for horizontal and vertical resolution decreasing respectively. Following figure shows the original input, 100 pixel width decreased output and 50 pixel height decreased output.

![Alt text](seam.jpg?raw=true "Title")

## Reference
[1] Avidan, S. and Shamir, A., 2007, August. Seam carving for content-aware image resizing. In ACM Transactions on graphics (TOG) (Vol. 26, No. 3, p. 10). ACM.

