clear all
a = arduino;
status = '';
th1 = 6;    
th2 = 7;    

while(1) 
    v = readVoltage(a, 'A0');
    force = v / 5.0 * 10;
    if (force < th1) 
        status = 'UNDER';
    elseif (force < th2)
        status = 'WITHIN LIMIT';
    else
        status = 'OVER';
    end
        
    fprintf('force = %f\tstatus = %s\n',force,status);
end
function varargout = InterfaceTestee(varargin)
% INTERFACETESTEE MATLAB code for InterfaceTestee.fig
%      INTERFACETESTEE, by itself, creates a new INTERFACETESTEE or raises the existing
%      singleton*.
%
%      H = INTERFACETESTEE returns the handle to a new INTERFACETESTEE or the handle to
%      the existing singleton*.
%
%      INTERFACETESTEE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFACETESTEE.M with the given input arguments.
%
%      INTERFACETESTEE('Property','Value',...) creates a new INTERFACETESTEE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InterfaceTestee_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InterfaceTestee_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InterfaceTestee

% Last Modified by GUIDE v2.5 01-May-2016 15:05:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterfaceTestee_OpeningFcn, ...
                   'gui_OutputFcn',  @InterfaceTestee_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before InterfaceTestee is made visible.
function InterfaceTestee_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InterfaceTestee (see VARARGIN)

% Choose default command line output for InterfaceTestee
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InterfaceTestee wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InterfaceTestee_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
A = imread('under.jpg');
image(A);
axis off


% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
A = imread('status1.jpg');
image(A);
axis off

% Hint: place code in OpeningFcn to populate axes1
