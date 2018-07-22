function img = createRGBImage(R, G, B, width, height)
    img = cat(3, R, G);
    img = cat(3, img, B);
    img = reshape(img, width, height, 3);
    img = fliplr(img);
    img = rot90(img);
end