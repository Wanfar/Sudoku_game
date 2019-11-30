function varargout = ui2(varargin)
% UI2 MATLAB code for ui2.fig
%      UI2, by itself, creates a new UI2 or raises the existing
%      singleton*.
%
%      H = UI2 returns the handle to a new UI2 or the handle to
%      the existing singleton*.
%
%      UI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI2.M with the given input arguments.
%
%      UI2('Property','Value',...) creates a new UI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui2

% Last Modified by GUIDE v2.5 18-Nov-2019 17:16:13

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui2_OpeningFcn, ...
                   'gui_OutputFcn',  @ui2_OutputFcn, ...
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


% --- Executes just before ui2 is made visible.
function ui2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui2 (see VARARGIN)

% Choose default command line output for ui2
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = ui2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function setGlobals(val)
global shudu
shudu = val;

function setGlobala(val)
global anwser
anwser = val;

% --- Executes on button press in gen_shudu.
function gen_shudu_Callback(hObject,eventdata , handles)
% hObject    handle to gen_shudu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
global shudu;
global anwser;
s=[8, 7, 4, 6, 3, 1, 5, 9, 2;
   5, 9, 6, 7, 2, 8, 4, 3, 1;
   2, 3, 1, 4, 5, 9, 6, 8, 7; 
   4, 8, 2, 1, 9, 6, 7, 5, 3;
   7, 6, 5, 3, 8, 4, 2, 1, 9;
   9, 1, 3, 5, 7, 2, 8, 4, 6;
   3, 2, 9, 8, 6, 5, 1, 7, 4;
   1, 5, 7, 2, 4, 3, 9, 6, 8;
   6, 4, 8, 9, 1, 7, 3, 2, 5]
shudu=magic_change(s)
anwser=shudu;
setGlobala(anwser)
dragNum=str2double(get(handles.edit1,'string'))
%д╛хо20╦Ж©у
%dragNum=20;
dragLoc = randperm(81, dragNum);
shudu(dragLoc) = 0;setGlobals(shudu)
set(handles.pushbutton1,'string',num2str(shudu(1,1)));
set(handles.pushbutton2,'string',num2str(shudu(1,2)));
set(handles.pushbutton3,'string',num2str(shudu(1,3)));
set(handles.pushbutton4,'string',num2str(shudu(1,4)));
set(handles.pushbutton5,'string',num2str(shudu(1,5)));
set(handles.pushbutton6,'string',num2str(shudu(1,6)));
set(handles.pushbutton7,'string',num2str(shudu(1,7)));
set(handles.pushbutton8,'string',num2str(shudu(1,8)));
set(handles.pushbutton9,'string',num2str(shudu(1,9)));

set(handles.pushbutton10,'string',num2str(shudu(2,1)));
set(handles.pushbutton11,'string',num2str(shudu(2,2)));
set(handles.pushbutton12,'string',num2str(shudu(2,3)));
set(handles.pushbutton13,'string',num2str(shudu(2,4)));
set(handles.pushbutton14,'string',num2str(shudu(2,5)));
set(handles.pushbutton15,'string',num2str(shudu(2,6)));
set(handles.pushbutton16,'string',num2str(shudu(2,7)));
set(handles.pushbutton17,'string',num2str(shudu(2,8)));
set(handles.pushbutton18,'string',num2str(shudu(2,9)));

set(handles.pushbutton19,'string',num2str(shudu(3,1)));
set(handles.pushbutton20,'string',num2str(shudu(3,2)));
set(handles.pushbutton21,'string',num2str(shudu(3,3)));
set(handles.pushbutton22,'string',num2str(shudu(3,4)));
set(handles.pushbutton13,'string',num2str(shudu(3,5)));
set(handles.pushbutton24,'string',num2str(shudu(3,6)));
set(handles.pushbutton25,'string',num2str(shudu(3,7)));
set(handles.pushbutton26,'string',num2str(shudu(3,8)));
set(handles.pushbutton27,'string',num2str(shudu(3,9)));

set(handles.pushbutton28,'string',num2str(shudu(4,1)));
set(handles.pushbutton29,'string',num2str(shudu(4,2)));
set(handles.pushbutton30,'string',num2str(shudu(4,3)));
set(handles.pushbutton31,'string',num2str(shudu(4,4)));
set(handles.pushbutton32,'string',num2str(shudu(4,5)));
set(handles.pushbutton33,'string',num2str(shudu(4,6)));
set(handles.pushbutton34,'string',num2str(shudu(4,7)));
set(handles.pushbutton35,'string',num2str(shudu(4,8)));
set(handles.pushbutton36,'string',num2str(shudu(4,9)));

set(handles.pushbutton37,'string',num2str(shudu(5,1)));
set(handles.pushbutton38,'string',num2str(shudu(5,2)));
set(handles.pushbutton39,'string',num2str(shudu(5,3)));
set(handles.pushbutton40,'string',num2str(shudu(5,4)));
set(handles.pushbutton41,'string',num2str(shudu(5,5)));
set(handles.pushbutton42,'string',num2str(shudu(5,6)));
set(handles.pushbutton43,'string',num2str(shudu(5,7)));
set(handles.pushbutton44,'string',num2str(shudu(5,8)));
set(handles.pushbutton45,'string',num2str(shudu(5,9)));

set(handles.pushbutton46,'string',num2str(shudu(6,1)));
set(handles.pushbutton47,'string',num2str(shudu(6,2)));
set(handles.pushbutton48,'string',num2str(shudu(6,3)));
set(handles.pushbutton49,'string',num2str(shudu(6,4)));
set(handles.pushbutton50,'string',num2str(shudu(6,5)));
set(handles.pushbutton51,'string',num2str(shudu(6,6)));
set(handles.pushbutton52,'string',num2str(shudu(6,7)));
set(handles.pushbutton53,'string',num2str(shudu(6,8)));
set(handles.pushbutton54,'string',num2str(shudu(6,9)));

set(handles.pushbutton55,'string',num2str(shudu(7,1)));
set(handles.pushbutton56,'string',num2str(shudu(7,2)));
set(handles.pushbutton57,'string',num2str(shudu(7,3)));
set(handles.pushbutton58,'string',num2str(shudu(7,4)));
set(handles.pushbutton59,'string',num2str(shudu(7,5)));
set(handles.pushbutton60,'string',num2str(shudu(7,6)));
set(handles.pushbutton61,'string',num2str(shudu(7,7)));
set(handles.pushbutton62,'string',num2str(shudu(7,8)));
set(handles.pushbutton63,'string',num2str(shudu(7,9)));

set(handles.pushbutton64,'string',num2str(shudu(8,1)));
set(handles.pushbutton65,'string',num2str(shudu(8,2)));
set(handles.pushbutton66,'string',num2str(shudu(8,3)));
set(handles.pushbutton67,'string',num2str(shudu(8,4)));
set(handles.pushbutton68,'string',num2str(shudu(8,5)));
set(handles.pushbutton69,'string',num2str(shudu(8,6)));
set(handles.pushbutton70,'string',num2str(shudu(8,7)));
set(handles.pushbutton71,'string',num2str(shudu(8,8)));
set(handles.pushbutton72,'string',num2str(shudu(8,9)));

set(handles.pushbutton73,'string',num2str(shudu(9,1)));
set(handles.pushbutton74,'string',num2str(shudu(9,2)));
set(handles.pushbutton75,'string',num2str(shudu(9,3)));
set(handles.pushbutton76,'string',num2str(shudu(9,4)));
set(handles.pushbutton77,'string',num2str(shudu(9,5)));
set(handles.pushbutton78,'string',num2str(shudu(9,6)));
set(handles.pushbutton79,'string',num2str(shudu(9,7)));
set(handles.pushbutton80,'string',num2str(shudu(9,8)));
set(handles.pushbutton81,'string',num2str(shudu(9,9)));

% --- Executes on button press in answer.
function answer_Callback(hObject,eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global s;
global shudu;
global anwser;
set(handles.pushbutton1,'string',num2str(anwser(1,1)));
set(handles.pushbutton2,'string',num2str(anwser(1,2)));
set(handles.pushbutton3,'string',num2str(anwser(1,3)));
set(handles.pushbutton4,'string',num2str(anwser(1,4)));
set(handles.pushbutton5,'string',num2str(anwser(1,5)));
set(handles.pushbutton6,'string',num2str(anwser(1,6)));
set(handles.pushbutton7,'string',num2str(anwser(1,7)));
set(handles.pushbutton8,'string',num2str(anwser(1,8)));
set(handles.pushbutton9,'string',num2str(anwser(1,9)));

set(handles.pushbutton10,'string',num2str(anwser(2,1)));
set(handles.pushbutton11,'string',num2str(anwser(2,2)));
set(handles.pushbutton12,'string',num2str(anwser(2,3)));
set(handles.pushbutton13,'string',num2str(anwser(2,4)));
set(handles.pushbutton14,'string',num2str(anwser(2,5)));
set(handles.pushbutton15,'string',num2str(anwser(2,6)));
set(handles.pushbutton16,'string',num2str(anwser(2,7)));
set(handles.pushbutton17,'string',num2str(anwser(2,8)));
set(handles.pushbutton18,'string',num2str(anwser(2,9)));

set(handles.pushbutton19,'string',num2str(anwser(3,1)));
set(handles.pushbutton20,'string',num2str(anwser(3,2)));
set(handles.pushbutton21,'string',num2str(anwser(3,3)));
set(handles.pushbutton22,'string',num2str(anwser(3,4)));
set(handles.pushbutton13,'string',num2str(anwser(3,5)));
set(handles.pushbutton24,'string',num2str(anwser(3,6)));
set(handles.pushbutton25,'string',num2str(anwser(3,7)));
set(handles.pushbutton26,'string',num2str(anwser(3,8)));
set(handles.pushbutton27,'string',num2str(anwser(3,9)));

set(handles.pushbutton28,'string',num2str(anwser(4,1)));
set(handles.pushbutton29,'string',num2str(anwser(4,2)));
set(handles.pushbutton30,'string',num2str(anwser(4,3)));
set(handles.pushbutton31,'string',num2str(anwser(4,4)));
set(handles.pushbutton32,'string',num2str(anwser(4,5)));
set(handles.pushbutton33,'string',num2str(anwser(4,6)));
set(handles.pushbutton34,'string',num2str(anwser(4,7)));
set(handles.pushbutton35,'string',num2str(anwser(4,8)));
set(handles.pushbutton36,'string',num2str(anwser(4,9)));

set(handles.pushbutton37,'string',num2str(anwser(5,1)));
set(handles.pushbutton38,'string',num2str(anwser(5,2)));
set(handles.pushbutton39,'string',num2str(anwser(5,3)));
set(handles.pushbutton40,'string',num2str(anwser(5,4)));
set(handles.pushbutton41,'string',num2str(anwser(5,5)));
set(handles.pushbutton42,'string',num2str(anwser(5,6)));
set(handles.pushbutton43,'string',num2str(anwser(5,7)));
set(handles.pushbutton44,'string',num2str(anwser(5,8)));
set(handles.pushbutton45,'string',num2str(anwser(5,9)));

set(handles.pushbutton46,'string',num2str(anwser(6,1)));
set(handles.pushbutton47,'string',num2str(anwser(6,2)));
set(handles.pushbutton48,'string',num2str(anwser(6,3)));
set(handles.pushbutton49,'string',num2str(anwser(6,4)));
set(handles.pushbutton50,'string',num2str(anwser(6,5)));
set(handles.pushbutton51,'string',num2str(anwser(6,6)));
set(handles.pushbutton52,'string',num2str(anwser(6,7)));
set(handles.pushbutton53,'string',num2str(anwser(6,8)));
set(handles.pushbutton54,'string',num2str(anwser(6,9)));

set(handles.pushbutton55,'string',num2str(anwser(7,1)));
set(handles.pushbutton56,'string',num2str(anwser(7,2)));
set(handles.pushbutton57,'string',num2str(anwser(7,3)));
set(handles.pushbutton58,'string',num2str(anwser(7,4)));
set(handles.pushbutton59,'string',num2str(anwser(7,5)));
set(handles.pushbutton60,'string',num2str(anwser(7,6)));
set(handles.pushbutton61,'string',num2str(anwser(7,7)));
set(handles.pushbutton62,'string',num2str(anwser(7,8)));
set(handles.pushbutton63,'string',num2str(anwser(7,9)));

set(handles.pushbutton64,'string',num2str(anwser(8,1)));
set(handles.pushbutton65,'string',num2str(anwser(8,2)));
set(handles.pushbutton66,'string',num2str(anwser(8,3)));
set(handles.pushbutton67,'string',num2str(anwser(8,4)));
set(handles.pushbutton68,'string',num2str(anwser(8,5)));
set(handles.pushbutton69,'string',num2str(anwser(8,6)));
set(handles.pushbutton70,'string',num2str(anwser(8,7)));
set(handles.pushbutton71,'string',num2str(anwser(8,8)));
set(handles.pushbutton72,'string',num2str(anwser(8,9)));

set(handles.pushbutton73,'string',num2str(anwser(9,1)));
set(handles.pushbutton74,'string',num2str(anwser(9,2)));
set(handles.pushbutton75,'string',num2str(anwser(9,3)));
set(handles.pushbutton76,'string',num2str(anwser(9,4)));
set(handles.pushbutton77,'string',num2str(anwser(9,5)));
set(handles.pushbutton78,'string',num2str(anwser(9,6)));
set(handles.pushbutton79,'string',num2str(anwser(9,7)));
set(handles.pushbutton80,'string',num2str(anwser(9,8)));
set(handles.pushbutton81,'string',num2str(anwser(9,9)));
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton34.
function pushbutton34_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton35.
function pushbutton35_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton51.
function pushbutton51_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton51 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton63.
function pushbutton63_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton64.
function pushbutton64_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton64 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton65.
function pushbutton65_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton65 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton67.
function pushbutton67_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton67 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton68.
function pushbutton68_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton68 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton69.
function pushbutton69_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton69 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton70.
function pushbutton70_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton70 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton80.
function pushbutton80_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2int(get(hObject,'String')) returns contents of edit1 as a double


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
