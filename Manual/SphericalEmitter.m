classdef SphericalEmitter
    %SphericalEmitter Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        PosX
        Xi
        Phi
        Lambda
        K
    end
    
    methods
        function obj = SphericalEmitter(posx,xi,phi,lambda)
            %SphericalEmitter Construct an instance of this class
            %   Detailed explanation goes here
            obj.PosX = posx;
            obj.Xi = xi;
            obj.Phi = phi;
            obj.Lambda = lambda;
            obj.K = abs(2*pi/lambda);
        end
        
        function P = PowerAtDist(obj,distX1, distX2,npoints, distY)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            rangeX = linspace(distX1,distX2,npoints)';
            f = @(x,k,n) x/n*sin(-k*n);
%             r = zeros(npoints);
%             n = zeros(npoints);
            P = zeros(npoints,1);
            
            for i=1:npoints
                r = [rangeX(i)-obj.PosX; distY];
                n = norm(r);
                P(i) =  f(obj.Xi,obj.K,n);
            end
            
        end
    end
end

