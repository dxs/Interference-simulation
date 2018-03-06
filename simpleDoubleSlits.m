function simpleDoubleSlits(sep, width, height, slitleft, slitright)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    middleW= width/2;
    middleH = height/2;
    
    leftAnchorX = middleW - sep/2 - slitleft.Width;
    leftAnchorY = middleH - slitleft.Height / 2;
    
    rightAnchorX = middleW + sep/2;
    rightAnchorY = middleH - slitright.Height / 2;
    
    g1 = zeros(width,height);
    
    
    %%Left anchor set
    for i=leftAnchorX:(leftAnchorX + slitleft.Width)
        for j=leftAnchorY:(leftAnchorY + slitleft.Height)
            g1(j,i) = slitleft.Intensity;
        end
    end
    
    %%Right anchor set
    for i=rightAnchorX:(rightAnchorX + slitright.Width)
        for j=rightAnchorY:(rightAnchorY + slitright.Height)
            g1(j,i) = slitright.Intensity;
        end
    end
    
    
    colormap('default');
    figure;
    subplot(2,1,1);
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
    s2 = subplot(2,1,2);
    
    hold;
    imagesc(mod11);
    colorbar;
    hold;
end

