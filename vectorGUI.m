function varargout = vectorGUI(varargin)
% VECTORGUI MATLAB code for vectorGUI.fig
%      VECTORGUI, by itself, creates a new VECTORGUI or raises the existing
%      singleton*.
%
%      H = VECTORGUI returns the handle to a new VECTORGUI or the handle to
%      the existing singleton*.
%
%      VECTORGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VECTORGUI.M with the given input arguments.
%
%      VECTORGUI('Property','Value',...) creates a new VECTORGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before vectorGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to vectorGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help vectorGUI

% Last Modified by GUIDE v2.5 25-Jan-2016 15:17:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @vectorGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @vectorGUI_OutputFcn, ...
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


% --- Executes just before vectorGUI is made visible.
function vectorGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to vectorGUI (see VARARGIN)

% Choose default command line output for vectorGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes vectorGUI wait for user response (see UIRESUME)
% uiwait(handles.vectorFigure);
set(handles.optPopupMenu, 'string', {'add(+)','minus(-)','transvection(¡¤)','cross(¡Á)', 'animation'}); % ,'mix(¡¤&¡Á)'

% --- Outputs from this function are returned to the command line.
function varargout = vectorGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function xVec1Edit_Callback(hObject, eventdata, handles)
% hObject    handle to xVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xVec1Edit as text
%        str2double(get(hObject,'String')) returns contents of xVec1Edit as a double


% --- Executes during object creation, after setting all properties.
function xVec1Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function yVec1Edit_Callback(hObject, eventdata, handles)
% hObject    handle to yVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yVec1Edit as text
%        str2double(get(hObject,'String')) returns contents of yVec1Edit as a double


% --- Executes during object creation, after setting all properties.
function yVec1Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zVec1Edit_Callback(hObject, eventdata, handles)
% hObject    handle to zVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zVec1Edit as text
%        str2double(get(hObject,'String')) returns contents of zVec1Edit as a double


% --- Executes during object creation, after setting all properties.
function zVec1Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zVec1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xVec2Edit_Callback(hObject, eventdata, handles)
% hObject    handle to xVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xVec2Edit as text
%        str2double(get(hObject,'String')) returns contents of xVec2Edit as a double


% --- Executes during object creation, after setting all properties.
function xVec2Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yVec2Edit_Callback(hObject, eventdata, handles)
% hObject    handle to yVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yVec2Edit as text
%        str2double(get(hObject,'String')) returns contents of yVec2Edit as a double


% --- Executes during object creation, after setting all properties.
function yVec2Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zVec2Edit_Callback(hObject, eventdata, handles)
% hObject    handle to zVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zVec2Edit as text
%        str2double(get(hObject,'String')) returns contents of zVec2Edit as a double


% --- Executes during object creation, after setting all properties.
function zVec2Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zVec2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in optPopupMenu.
function optPopupMenu_Callback(hObject, eventdata, handles)
% hObject    handle to optPopupMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns optPopupMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from optPopupMenu


% --- Executes during object creation, after setting all properties.
function optPopupMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to optPopupMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function vectorFigure_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vectorFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on mouse press over figure background.
function vectorFigure_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to vectorFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function xVec1Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to xVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xVec1Edit_S as text
%        str2double(get(hObject,'String')) returns contents of xVec1Edit_S as a double


% --- Executes during object creation, after setting all properties.
function xVec1Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yVec1Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to yVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yVec1Edit_S as text
%        str2double(get(hObject,'String')) returns contents of yVec1Edit_S as a double


% --- Executes during object creation, after setting all properties.
function yVec1Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zVec1Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to zVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zVec1Edit_S as text
%        str2double(get(hObject,'String')) returns contents of zVec1Edit_S as a double


% --- Executes during object creation, after setting all properties.
function zVec1Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zVec1Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xVec2Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to xVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xVec2Edit_S as text
%        str2double(get(hObject,'String')) returns contents of xVec2Edit_S as a double


% --- Executes during object creation, after setting all properties.
function xVec2Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yVec2Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to yVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yVec2Edit_S as text
%        str2double(get(hObject,'String')) returns contents of yVec2Edit_S as a double


% --- Executes during object creation, after setting all properties.
function yVec2Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zVec2Edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to zVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zVec2Edit_S as text
%        str2double(get(hObject,'String')) returns contents of zVec2Edit_S as a double


% --- Executes during object creation, after setting all properties.
function zVec2Edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zVec2Edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in calcBtn.
function calcBtn_Callback(hObject, eventdata, handles)
% hObject    handle to calcBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1_s = get(handles.xVec1Edit_S, 'string');
y1_s = get(handles.yVec1Edit_S, 'string');
z1_s = get(handles.zVec1Edit_S, 'string');
x2_s = get(handles.xVec2Edit_S, 'string');
y2_s = get(handles.yVec2Edit_S, 'string');
z2_s = get(handles.zVec2Edit_S, 'string');
x1 = get(handles.xVec1Edit, 'string');
y1 = get(handles.yVec1Edit, 'string');
z1 = get(handles.zVec1Edit, 'string');
x2 = get(handles.xVec2Edit, 'string');
y2 = get(handles.yVec2Edit, 'string');
z2 = get(handles.zVec2Edit, 'string');
p1=[str2double(x1_s), str2double(y1_s), str2double(z1_s); str2double(x1), str2double(y1), str2double(z1)];
p2=[str2double(x2_s), str2double(y2_s), str2double(z2_s); str2double(x2), str2double(y2), str2double(z2)];
opt = get(handles.optPopupMenu, 'value');
drawVectors(p1, p2, opt, handles.outputAxes);