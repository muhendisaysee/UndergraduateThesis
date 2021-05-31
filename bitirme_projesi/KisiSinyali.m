classdef KisiSinyali
 
    properties
        x_degeri
        y_degeri
        durum
        ilgili_noktaya_uzaklik
    end
    
    methods
        function obj = KisiSinyali(x_degeri,y_degeri,durum)
            if nargin < 3
                obj.x_degeri = x_degeri;
                obj.y_degeri = y_degeri;
            else 
                 obj.x_degeri = x_degeri;
                obj.y_degeri = y_degeri;
                obj.durum = durum;
            end
        end
    end
    
end

