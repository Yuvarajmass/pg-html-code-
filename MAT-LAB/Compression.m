X=imread("compression.jpg")          
image(X)
title('Original Image')
colormap(map)
w = 'sym8';              
[c l] = wavedec2(X,n,w); 
opt = 'gbl'; 
thr = 20;    
sorh = 'h';   
 keepapp = 1; 
[xd,cxd,lxd,perf0,perfl2] = wdencmp(opt,c,l,w,n,thr,sorh,keepapp);
image(X)
title('Original Image')
colormap(map)
figure('Color','white'),image(xd)
title('Compressed Image - Global Threshold = 20')
colormap(map)
norm recovery (%):
perf0 
     76.2099                               
 Compression score (%):
perfl2 
    99.9772
