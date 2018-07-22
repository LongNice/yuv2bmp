function [R,G,B] = yuv2rgb(Y, U, V, UVWidth, UVHeight)
    for ScanY = 1 : UVHeight
        UVHeight
        for ScanX = 1  : UVWidth
            R((ScanX-1)*2+1,(ScanY-1)*2+1) = Y((ScanX-1)*2+1,(ScanY-1)*2+1) + (1.4075 * (V(ScanX,ScanY) - 128)); 
            G((ScanX-1)*2+1,(ScanY-1)*2+1) = Y((ScanX-1)*2+1,(ScanY-1)*2+1) - (0.3455 * (U(ScanX,ScanY) - 128) + (0.7169 * (V(ScanX,ScanY) - 128)));
            B((ScanX-1)*2+1,(ScanY-1)*2+1) = Y((ScanX-1)*2+1,(ScanY-1)*2+1) + (1.7790 * (U(ScanX,ScanY) - 128));

            R((ScanX-1)*2+2,(ScanY-1)*2+1) = Y((ScanX-1)*2+2,(ScanY-1)*2+1) + (1.4075 * (V(ScanX,ScanY) - 128)); 
            G((ScanX-1)*2+2,(ScanY-1)*2+1) = Y((ScanX-1)*2+2,(ScanY-1)*2+1) - (0.3455 * (U(ScanX,ScanY) - 128) + (0.7169 * (V(ScanX,ScanY) - 128)));
            B((ScanX-1)*2+2,(ScanY-1)*2+1) = Y((ScanX-1)*2+2,(ScanY-1)*2+1) + (1.7790 * (U(ScanX,ScanY) - 128));

            R((ScanX-1)*2+1,(ScanY-1)*2+2) = Y((ScanX-1)*2+1,(ScanY-1)*2+2) + (1.4075 * (V(ScanX,ScanY) - 128)); 
            G((ScanX-1)*2+1,(ScanY-1)*2+2) = Y((ScanX-1)*2+1,(ScanY-1)*2+2) - (0.3455 * (U(ScanX,ScanY) - 128) + (0.7169 * (V(ScanX,ScanY) - 128)));
            B((ScanX-1)*2+1,(ScanY-1)*2+2) = Y((ScanX-1)*2+1,(ScanY-1)*2+2) + (1.7790 * (U(ScanX,ScanY) - 128));

            R((ScanX-1)*2+2,(ScanY-1)*2+2) = Y((ScanX-1)*2+2,(ScanY-1)*2+2) + (1.4075 * (V(ScanX,ScanY) - 128)); 
            G((ScanX-1)*2+2,(ScanY-1)*2+2) = Y((ScanX-1)*2+2,(ScanY-1)*2+2) - (0.3455 * (U(ScanX,ScanY) - 128) + (0.7169 * (V(ScanX,ScanY) - 128)));
            B((ScanX-1)*2+2,(ScanY-1)*2+2) = Y((ScanX-1)*2+2,(ScanY-1)*2+2) + (1.7790 * (U(ScanX,ScanY) - 128));
        end
    end
end