function varargout = Respiratory_system_diagnosis(varargin)
% RESPIRATORY_SYSTEM_DIAGNOSIS MATLAB code for Respiratory_system_diagnosis.fig
%      RESPIRATORY_SYSTEM_DIAGNOSIS, by itself, creates a new RESPIRATORY_SYSTEM_DIAGNOSIS or raises the existing
%      singleton*.
%
%      H = RESPIRATORY_SYSTEM_DIAGNOSIS returns the handle to a new RESPIRATORY_SYSTEM_DIAGNOSIS or the handle to
%      the existing singleton*.
%
%      RESPIRATORY_SYSTEM_DIAGNOSIS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPIRATORY_SYSTEM_DIAGNOSIS.M with the given input arguments.
%
%      RESPIRATORY_SYSTEM_DIAGNOSIS('Property','Value',...) creates a new RESPIRATORY_SYSTEM_DIAGNOSIS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Respiratory_system_diagnosis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Respiratory_system_diagnosis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Respiratory_system_diagnosis

% Last Modified by GUIDE v2.5 08-Jun-2018 13:07:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Respiratory_system_diagnosis_OpeningFcn, ...
                   'gui_OutputFcn',  @Respiratory_system_diagnosis_OutputFcn, ...
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


% --- Executes just before Respiratory_system_diagnosis is made visible.
function Respiratory_system_diagnosis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Respiratory_system_diagnosis (see VARARGIN)

% Choose default command line output for Respiratory_system_diagnosis
handles.output = hObject;
set(handles.edit2,'visible','off');

a=imread('logo.jpg');
axes(handles.axes1);
imshow(a);
handles.features=zeros(16,1);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Respiratory_system_diagnosis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Respiratory_system_diagnosis_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(1,:)=0
elseif strcmp(selected_string,'Yes');
    features(1,:)=1
else
    features(1,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(2,:)=0
elseif strcmp(selected_string,'Normal');
    features(2,:)=0.5
elseif strcmp(selected_string,'High');
    features(2,:)=1
else
    features(2,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(3,:)=0
elseif strcmp(selected_string,'Medium');
    features(3,:)=0.5
elseif strcmp(selected_string,'High');
    features(3,:)=1
else
    features(3,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(4,:)=0
elseif strcmp(selected_string,'Yes');
    features(4,:)=1
else
    features(4,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(5,:)=0
elseif strcmp(selected_string,'Yes');
    features(5,:)=1
else
    features(5,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(6,:)=0
elseif strcmp(selected_string,'Yes');
    features(6,:)=1
else
    features(6,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(7,:)=0
elseif strcmp(selected_string,'Yes');
    features(7,:)=1
else
    features(7,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(8,:)=0
elseif strcmp(selected_string,'Yes');
    features(8,:)=1
else
    features(8,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(9,:)=0
elseif strcmp(selected_string,'Yes');
    features(9,:)=1
else
    features(9,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(10,:)=0
elseif strcmp(selected_string,'Yes');
    features(10,:)=1
else
    features(10,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu11.
function popupmenu11_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(11,:)=0
elseif strcmp(selected_string,'Yes');
    features(11,:)=1
else
    features(11,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu11 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu11


% --- Executes during object creation, after setting all properties.
function popupmenu11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu12.
function popupmenu12_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(12,:)=0
elseif strcmp(selected_string,'Yes');
    features(12,:)=1
else
    features(12,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu12 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu12


% --- Executes during object creation, after setting all properties.
function popupmenu12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu13.
function popupmenu13_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'Normal');
    features(13,:)=0
elseif strcmp(selected_string,'High');
    features(13,:)=1
else
    features(13,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu13 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu13


% --- Executes during object creation, after setting all properties.
function popupmenu13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu14.
function popupmenu14_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(14,:)=0
elseif strcmp(selected_string,'Yes');
    features(14,:)=1
else
    features(14,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu14 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu14


% --- Executes during object creation, after setting all properties.
function popupmenu14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu15.
function popupmenu15_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value');
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'No');
    features(16,:)=0
elseif strcmp(selected_string,'Yes');
    features(16,:)=1
else
    features(16,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu15 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu15


% --- Executes during object creation, after setting all properties.
function popupmenu15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu16.
function popupmenu16_Callback(hObject, eventdata, handles)
features=handles.features;
val = get(hObject,'Value')
string_list = get(hObject,'String')
selected_string = string_list{val};
if strcmp(selected_string,'Low');
    features(15,:)=0
elseif strcmp(selected_string,'Medium');
    features(15,:)=0.5
elseif strcmp(selected_string,'High');
    features(15,:)=1
else
    features(15,:)=0
end
handles.features=features;
guidata(hObject, handles);
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu16 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu16


% --- Executes during object creation, after setting all properties.
function popupmenu16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
load Resp sys1;
features=handles.features;
if(sum(features)==1 && features(1)==1)
    handles.result=100;%ﬁ‘⁄ 
elseif(sum(features)==1) && (features(2)==1 || features(2)==0.5)
    handles.result=101;%”⁄«· 
elseif(sum(features)==1 && features(8)==1)
    handles.result=102;% «Õ„—«— ·Ê“ -„÷«œ ÕÌÊÌ 
elseif(sum(features)==1 && features(16)==1)
    handles.result=103;% Œ—ÊÃ œ„ -«” ‘— ÿ»Ì» 
else
    handles.result=evalfis(features,sys1)
end
msgbox('Symptoms have been analysed, click to show results');
    guidata(hObject, handles);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
if (handles.result==100)
    set(handles.edit1,'String','You need an expectorant to remove phlegm','BackgroundColor',[0.9 0.9 0.2],'Fontsize',14);
elseif (handles.result==101)
    set(handles.edit1,'String','Cough only, drink warm tea','BackgroundColor',[0.9 0.9 0.2],'Fontsize',14);
elseif (handles.result==102)
    set(handles.edit1,'String','Redness of the tonsils, you need an antibiotic','BackgroundColor',[0.9 0.9 0.2],'Fontsize',14);
elseif (handles.result==103)
    set(handles.edit1,'String','Coughing blood, call physician','BackgroundColor',[0.9 0.6 0.2],'Fontsize',14);
else
if (handles.result<0.14)
   result='Normal'; 
      handles.advice='Relax, drink tea :)';

   set(handles.edit1,'String',result,'BackgroundColor',[0.6 0.9 0.2],'Fontsize',14);
elseif (handles.result>0.14 && handles.result<0.21)
    result='Tuberculosis'; 
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
   handles.advice='Isolation from other people, call physician';
elseif (handles.result>0.2 && handles.result<0.3)
    result='Pharyngitis'; 
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
   handles.advice='Take antibiotic and drink warm tea';
elseif (handles.result>0.3 && handles.result<0.4)
    result='Tonsillitis needs an antibiotic';
    handles.advice='Take antibiotic, call physician when necessary';
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
elseif (handles.result>0.4 && handles.result<0.5)
    result='Bronchitis';  
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
   handles.advice='Take antibiotic, call physician';
elseif (handles.result>0.55 && handles.result<0.56)
    result='Lung Cancer'; 
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
   handles.advice='Call physician immediately';
elseif (handles.result>0.5 && handles.result<0.6)
    result='Pneumonia'; 
   set(handles.edit1,'String',result,'BackgroundColor',[0.9 0.2 0.2],'Fontsize',14);
   handles.advice='Call physician immediately';
end
end
    guidata(hObject, handles);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.edit2,'visible','on');
set(handles.edit2,'String',handles.advice,'BackgroundColor',[0.7 0.3 0.8],'Fontsize',14);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.edit1,'string','','backgroundcolor','w');
set(handles.edit2,'string','','backgroundcolor','w');
set(handles.popupmenu1,'value',1);
set(handles.popupmenu2,'value',1);
set(handles.popupmenu3,'value',1);
set(handles.popupmenu4,'value',1);
set(handles.popupmenu5,'value',1);
set(handles.popupmenu6,'value',1);
set(handles.popupmenu7,'value',1);
set(handles.popupmenu8,'value',1);
set(handles.popupmenu9,'value',1);
set(handles.popupmenu10,'value',1);
set(handles.popupmenu11,'value',1);
set(handles.popupmenu12,'value',1);
set(handles.popupmenu13,'value',1);
set(handles.popupmenu14,'value',1);
set(handles.popupmenu15,'value',1);
set(handles.popupmenu16,'value',1);

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
