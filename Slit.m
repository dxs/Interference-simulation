classdef Slit
    %Slit Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Width
        Height
        NbSpot
        Array
    end
    
    methods
        function obj = Slit(width,height,nbspot)
           obj.Width = width;
           obj.Height = height;
           obj.NbSpot = nbspot;
           obj.Array = ones(Width,Height);
        end
    end
end

