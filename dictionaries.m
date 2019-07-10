cd C:\Users\user\Desktop\Part1\Part1_Resized_gray
dc=dir('*.jpg')
dt=dir('..\test\Part1_Resized_gray')
%dt=dir('..\test\Part1_Straight')
OutputFolder=''
thisimage = dc(1).name;
Img = imread(thisimage);
imwrite(Img,'myMultipageFile.tif')
train=[]
test=[]
%train dataset
for K = 1 : length(dc)
  thisimage = dc(K).name;  %just the name of the image
  %read the image
  Img = imread(thisimage);
  testimg = dt(K).name;
 % Imgt = imread(fullfile('C:\Users\user\Desktop\Part1\test\Part1_Straight', testimg));
  %a{K} = Img;
  train=[train, reshape(Img, [1260, 1])];
 % xx{K} = imresize(Img, [1260, 1]);
 % imwrite(Img,'myMultipageFile.tif','WriteMode','append')
end
%test dataset
cd C:\Users\user\Desktop\Part1\test\Part1_Resized_gray
dc=dir('*.jpg')
test=[];
for K = 1 : length(dc)
  thisimage = dc(K).name;  %just the name of the image
  Img = imread(thisimage);
  test=[test, reshape(Img, [1260, 1])];
end
cd C:\Users\user\Desktop\Face_GDHASLR\
save('a.mat', 'a')
save('dataset.mat','train', 'test')
%imwrite(v, fullfile('C:\Users\user\Desktop\Part1\Part1_Resized\V_AR_1260_occu'));
%imwrite(a, fullfile(OutputFolder, 'AR_1260_occu'));