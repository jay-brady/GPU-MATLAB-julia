filename = 'julia.img';
fid = fopen(filename, 'r');
dat = fread(fid);
fclose(fid);

% assume square image in RGBA fmt.
imgx = round(sqrt(length(dat)/4));
imgy = imgx;

img = zeros(imgx, imgy, 3);
for x=0:imgx-1
    for y=0:imgy-1
        i = x*imgy + y;
        img(x+1,y+1,1) = dat(i*4+1);
        img(x+1,y+1,2) = dat(i*4+2);
        img(x+1,y+1,3) = dat(i*4+3);
    end
end

imshow(img);