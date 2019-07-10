x = imageSet('C:\Users\user\Desktop\Part1\','recursive')
%for n=1:size(x)
cd C:\Users\user\Desktop\Part1\test\
dc=dir('*.jpg')
OutputFolder='..\Part1_Occ'
for K = 1 : length(dc)
  thisimage = dc(K).name;  %just the name of the image
  %read the image
  Img = imread(thisimage);
  new = imresize(Img, [42, 30]);
  straight = imresize(new, [1260,1]);
  new1=rgb2gray(new);
  imwrite(straight, fullfile(OutputFolder, thisimage));
end
cd C:\Users\user\Desktop\Face_GDHASLR\
