clear all;close all;
clc;
readObject=vision.VideoFileReader('Wildlife.wmv');
writeObject=VideoWriter('Wildlife_copy.avi');
s=info(readObject);
frame_rate=s.VideoFrameRate;
VideoWriter.FrameRate=frame_rate;
open(writeObject)

%write video
while ~isDone(readObject)
    frame=step(readObject);
    writeVideo(writeObject,frame);
end

close(writeObject);
release(readObject);

    
    

