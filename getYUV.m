function [Y,U,V] = getYUV(data, width, height, len)
    Y = data(1:width*height);
    U = data(width*height+1:2:len);
    V = data(width*height+2:2:len);
end