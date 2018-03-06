function simpleDoubleSlits(sep, width, height, slitleft, slitright)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    halfw = width/2;
    halfh = height/2;
    
    g1 = zeros(height,width);
    g1(halfh,halfw-sep) = 1;
    g1(halfh,halfw+sep) = 1;
    g1(halfh+1,halfw-sep) = 1;
    g1(halfh+1,halfw+sep) = 1;
    g1(halfh+2,halfw-sep) = 1;
    g1(halfh+2,halfw+sep) = 1;
    g1(halfh+2,halfw-sep) = 1;
    g1(halfh+2,halfw+sep) = 1;
    g1(halfh+3,halfw-sep) = 1;
    g1(halfh+3,halfw+sep) = 1;
    
    g1(halfh,halfw-sep+1) = 1;
    g1(halfh,halfw+sep-1) = 1;
    g1(halfh+1,halfw-sep+1) = 1;
    g1(halfh+1,halfw+sep-1) = 1;
    g1(halfh+2,halfw-sep+1) = 1;
    g1(halfh+2,halfw+sep-1) = 1;
    g1(halfh+2,halfw-sep+1) = 1;
    g1(halfh+2,halfw+sep-1) = 1;
    g1(halfh+3,halfw-sep+1) = 1;
    g1(halfh+3,halfw+sep-1) = 1;
    
    colormap('default');
    imagesc(g1);
    pause
    gf1 = fft2(g1,height,width);
    
    for j=1:width
        for i=1:height
            rv = real(gf1(i,j));
            iv=imag(gf1(i,j));
            mod1(i,j)=(rv*rv+iv*iv);
        end
    end
    mod11=fftshift(mod1);
    colormap('default');
    imagesc(mod11);
    pause
end

