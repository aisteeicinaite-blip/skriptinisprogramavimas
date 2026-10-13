%14 variantas
function varargout = specfunkc(varargin)

if nargin == 1
    varargout{1} = varargin{1}^2;

elseif nargin == 2
    varargout{1} = varargin{1}^3;
    varargout{2} = varargin{2}^2;

else
    error('Funkcija priima viena arba du argumentus.');
end

end