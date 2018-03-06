function simpleSlits(width, height, slit)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    middleW= width/2;
    middleH = height/2;
    
    AnchorX = middleW - slit.Width / 2;
    AnchorY = middleH - slit.Height / 2;
    
    g1 = zeros(width,height);
    
    
    %%Left anchor set
    for i=AnchorX:(AnchorX + slit.Width)
        for j=AnchorY:(AnchorY + slit.Height)
            g1(j,i) = slit.Intensity;
        end
    end
    
    %%Right anchor set
    for i=AnchorX:(AnchorX + slit.Width)
        for j=AnchorY:(AnchorY + slit.Height)
            g1(j,i) = slit.Intensity;
        end
    end
    
    
    colormap('default');
    subplot(2,2,2);
    hold;
    imagesc(g1);
    colorbar;
    hold;
    gf1 = fft2(g1,height,width);
    
    for j=1:height
        for i=1:width
            rv = real(gf1(i,j));
            iv=imag(gf1(i,j));
            mod1(i,j)=(rv*rv+iv*iv);
        end
    end
    mod11=fftshift(mod1);
    colormap('default');
    s2 = subplot(2,2,4);
    
    hold;
    imagesc(mod11);
    colorbar;
    hold;
    s3 = subplot(2,2,[1 3]);
    surf(mod11);
end

