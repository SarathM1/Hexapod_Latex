function varargout = gui001(varargin)
% GUI001 M-file for gui001.fig
%      GUI001, by itself, creates a new GUI001 or raises the existing
%      singleton*.
%
%      H = GUI001 returns the handle to a new GUI001 or the handle to
%      the existing singleton*.
%
%      GUI001('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI001.M with the given input arguments.
%
%      GUI001('Property','Value',...) creates a new GUI001 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui001_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui001_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui001

% Last Modified by GUIDE v2.5 24-Feb-2014 16:08:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui001_OpeningFcn, ...
                   'gui_OutputFcn',  @gui001_OutputFcn, ...
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


% --- Executes just before gui001 is made visible.
function gui001_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui001 (see VARARGIN)

% Choose default command line output for gui001
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui001 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui001_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in stpppp.
function stpppp_Callback(hObject, eventdata, handles)
% hObject    handle to stpppp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sersent('S')

% --- Executes on button press in fwdddd.
function fwdddd_Callback(hObject, eventdata, handles)
% hObject    handle to fwdddd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sersent('F')
% --- Executes on button press in bckrdd.
function bckrdd_Callback(hObject, eventdata, handles)
% hObject    handle to bckrdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sersent('B')

% --- Executes on button press in lftttt.
function lftttt_Callback(hObject, eventdata, handles)
% hObject    handle to lftttt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sersent('L')

% --- Executes on button press in rhtttt.
function rhtttt_Callback(hObject, eventdata, handles)
% hObject    handle to rhtttt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sersent('R')

% --- Executes on button press in snsrr.
function snsrr_Callback(hObject, eventdata, handles)
% hObject    handle to snsrr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
global cd
cd=1;
while cd==1
serr
q=out2;
% q='#$031$0147$031$0155$*'
if length(q)>0
    R=find(q=='#');
    S=find(q=='*');
    if S(1)>R(1)
        T=q((R(1)+1):(S(1)-1));
        
    else
        T=q((R(1)+1):(S(2)-1));
    end
    
    f2=find(T=='$');
    Tm=T(f2(1)+1:f2(2)-1)
    Li=T(f2(2)+1:f2(3)-1)
    Hu=T(f2(3)+1:f2(4)-1)
uicontrol('style','text','position',[25,100,80,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string','Temperature')
uicontrol('style','edit','position',[25,70,60,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string',Tm)

uicontrol('style','text','position',[110,100,60,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string','Light')
uicontrol('style','edit','position',[120,70,60,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string',Li)
   
uicontrol('style','text','position',[25,30,60,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string','Humidity')
uicontrol('style','edit','position',[25,10,60,30],'backgroundcolor',[0,0,0],'foregroundcolor',[0,1,1],'fontsize',10.0,'string','60')
 
end
pause(1)
end

% --- Executes on button press in cmmprtt.
function cmmprtt_Callback(hObject, eventdata, handles)
% hObject    handle to cmmprtt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 prompt={'Enter the COM PORT'};
 name='Enter the COM PORT';
anr=inputdlg(prompt,name);
anr=cell2mat(anr);
save comm.dat anr -ascii
   


% --- Executes on button press in imgdttt.
function imgdttt_Callback(hObject, eventdata, handles)
% hObject    handle to imgdttt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
clear all
RGB1=imread('20140219_165816.jpg');
RGB2 = imadjust(RGB1,[.2 .3 0; .6 .7 1],[]);
[x y z]=size(RGB2)
data=RGB2;
subplot(221);imshow(data)
diff_im = imsubtract(data(:,:,2), rgb2gray(data));
diff_im = medfilt2(diff_im, [3 3]);
diff_im = im2bw(diff_im,0.1);
b= bwareaopen(diff_im,166);
m=b(1:50,:);
n=b(50:100,:);
o=b(100:142,:);
f1=find(m==1);f2=find(n==1);f3=find(o==1);


subplot(222);imshow(m)
subplot(223);imshow(n)
subplot(224);imshow(o)

if length(f1)>100
    
    sersent('Z')
    pause(1)
    sersent('Z')
    sersent('F')
    pause(5)

else 
        disp('Forward')
        sersent('F')
    pause(5)
end

if length(f2)>100
    
    sersent('Z')
    pause(1)
    sersent('Z')
    sersent('F')
    pause(5)
else 
        disp('Forward')
        sersent('F')
    pause(5)
end
if length(f3)>100
    
    sersent('Z')
    pause(1)
    sersent('Z')
    sersent('F')
    pause(5)
else 
        disp('Forward')
        sersent('F')
    pause(5)
end

sersent('S')
disp('Finished')
% --- Executes on button press in stppsnsrr.
function stppsnsrr_Callback(hObject, eventdata, handles)
% hObject    handle to stppsnsrr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cd
cd=12;
disp('FINISHED')