classdef Slit
    %Slit Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Width
        Height
        Intensity
        NbSpot
        Array
    end
    
    methods
        function obj = Slit(width,height,intensity,nbspot)
           obj.Width = width;
           obj.Height = height;
           obj.Intensity = intensity;
           obj.NbSpot = nbspot;
           obj.Array = ones(obj.Width,obj.Height);
        end
    end
end

