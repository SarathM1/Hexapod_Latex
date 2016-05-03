clc
clear all
close all
RGB1=imread('20140219_165816.jpg');
RGB2 = imadjust(RGB1,[.2 .3 0; .6 .7 1],[]);
[x y z]=size(RGB2)
data=RGB2;
figure(2);imshow(data)
diff_im = imsubtract(data(:,:,2), rgb2gray(data));
diff_im = medfilt2(diff_im, [3 3]);
diff_im = im2bw(diff_im,0.1);
b= bwareaopen(diff_im,166);
m=b(1:50,:);
n=b(50:100,:);
o=b(100:142,:);
f1=find(m==1);f2=find(n==1);f3=find(o==1);
if length(f1)>100
    disp('RIGHT')
    pause(5)
        disp('LEFT')
    pause(5)
        disp('Forward')
    pause(5)
else 
        disp('Forward')
    pause(5)
end

if length(f2)>100
    disp('RIGHT')
    pause(5)
        disp('LEFT')
    pause(5)
        disp('Forward')
    pause(5)
else 
        disp('Forward')
    pause(5)
end
if length(f3)>100
    disp('RIGHT')
    pause(5)
        disp('LEFT')
    pause(5)
        disp('Forward')
    pause(5)
else 
        disp('Forward')
    pause(5)
end

figure(3);imshow(m)
figure(4);imshow(n)
figure(5);imshow(o)
