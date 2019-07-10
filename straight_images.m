cd C:\Users\user\Desktop\Part1\test\Part1_Straight\
dr=dir('*.jpg')
OutputFolder=''
train=[]
test=[]
for K = 1 : length(dr)
  thisimage = dr(K).name;  %just the name of the image
  %read the image
  Img = imread(thisimage);
  Img = rgb2gray(Img);
  a{K} = Img;
  test=[test, Img];
end
cd C:\Users\user\Desktop\Face_GDHASLR\
save('a.mat', 'a')
save('dataset.mat','train', 'test')