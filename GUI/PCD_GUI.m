function varargout = PCD_GUI(varargin)
% PCD_GUI MATLAB code for PCD_GUI.fig
%      PCD_GUI, by itself, creates a new PCD_GUI or raises the existing
%      singleton*.
%
%      H = PCD_GUI returns the handle to a new PCD_GUI or the handle to
%      the existing singleton*.
%
%      PCD_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PCD_GUI.M with the given input arguments.
%
%      PCD_GUI('Property','Value',...) creates a new PCD_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PCD_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PCD_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PCD_GUI

% Last Modified by GUIDE v2.5 28-Oct-2021 12:43:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PCD_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @PCD_GUI_OutputFcn, ...
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


% --- Executes just before PCD_GUI is made visible.
function PCD_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PCD_GUI (see VARARGIN)

% Posisi GUI
movegui('center');

% Initial data
handles.image_warna = uint8(zeros(512,512,3));
handles.image_gray = uint8(zeros(512,512));
handles.image_noise = uint8(zeros(512,512));

axes(handles.axesCitraAsli);
imshow(handles.image_warna);
axes(handles.axesCitraNoise);
imshow(handles.image_noise);

% Choose default command line output for PCD_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
bg = axes('units', 'normalized', 'position', [0 0 1 1]);
wr = imread('bgpcd2.jpg');
imagesc(wr);
set(bg, 'handlevisibility', 'off', 'visible', 'off');

% UIWAIT makes PCD_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PCD_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in AmbilGambar_PushButton.
function AmbilGambar_PushButton_Callback(hObject, eventdata, handles)
% hObject    handle to AmbilGambar_PushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file_name, path_name] = uigetfile({'*.png';'*.jpg';'*.bmp';'*.tif'},'Ambil Gambar');
if ~isequal (file_name,0)
    image_data = imread(fullfile(path_name, file_name));
    image_data_gray = rgb2gray(image_data);
    handles.image_warna = image_data;
    handles.image_gray = image_data_gray;
    handles.image_noise = imnoise(image_data_gray,'gaussian');
    guidata(hObject, handles);
    
    axes(handles.axesCitraAsli);
    imshow(handles.image_gray);
    
    axes(handles.axesCitraNoise);
    imshow(handles.image_noise);
else
    return
end


% --- Executes on selection change in Noise_PopUp.
function Noise_PopUp_Callback(hObject, eventdata, handles)
% hObject    handle to Noise_PopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Noise_PopUp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Noise_PopUp

val_popup = get(hObject, 'Value');

switch val_popup
    case 1
        im_noise = imnoise(handles.image_gray,'gaussian');
    case 2
        im_noise = imnoise(handles.image_gray,'poisson');
    case 3
        im_noise = imnoise(handles.image_gray,'salt & pepper');
    case 4
        im_noise = imnoise(handles.image_gray,'speckle');
end
axes(handles.axesCitraNoise);
imshow(im_noise);

handles.image_noise = im_noise;
guidata(hObject, handles);    
        
% --- Executes during object creation, after setting all properties.
function Noise_PopUp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Noise_PopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Warna_CheckBox.
function Warna_CheckBox_Callback(hObject, eventdata, handles)
% hObject    handle to Warna_CheckBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Warna_CheckBox

val_checkbox = get(hObject,'Value');
axes(handles.axesCitraAsli);
imshow(handles.image_gray);
if val_checkbox==1    
    imshow(handles.image_warna);
end


% --- Executes on button press in Simulasi_Button.
function Simulasi_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Simulasi_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
setappdata(0,'Citra_Warna', handles.image_warna);
setappdata(0,'Citra_Gray', handles.image_gray);
setappdata(0,'Citra_Noise', handles.image_noise);
if handles.image_warna == zeros(size(handles.image_warna))
    warndlg('Belum memilih gambar','Error')
else
    SIMULASI_FILTER
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.image_warna == zeros(size(handles.image_warna))
    warndlg('Belum memilih gambar','Error')
else
    KOMPARASI_FILTER
end
