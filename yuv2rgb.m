function [R,G,B] = yuv2rgb(Y, U, V, len)
    for scan = 1 : len
        scan
        for RGBscan = 1 : 4
            R((scan-1)*4+RGBscan,1) = Y((scan-1)*4+RGBscan,1) + (1.4075 * (V(scan,1) - 128)); 
            G((scan-1)*4+RGBscan,1) = Y((scan-1)*4+RGBscan,1) - (0.3455 * (U(scan,1) - 128) + (0.7169 * (V(scan,1) - 128)));
            B((scan-1)*4+RGBscan,1) = Y((scan-1)*4+RGBscan,1) + (1.7790 * (U(scan,1) - 128));
        end   
    end
end