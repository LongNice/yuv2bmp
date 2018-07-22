function [Y,U,V] = getYUV(data, width, height)
    data = reshape(data,width,height*1.5);
    Y = data(1:width,1:height);
    U = data(1:2:width,height+1:height*1.5);
    V = data(2:2:width,height+1:height*1.5);
end