function varargout = calculator(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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
function calculator_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = calculator_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function Clear_Callback(hObject, eventdata, handles)
set(handles.text1, 'String', '0');
function Div_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString(end) == '/'
   set(handles.text1, 'String', textString);
elseif contains('+-*', textString(end))
    textString(end) = '/';
    set(handles.text1, 'String', textString);
elseif textString(end) == '.'
    textString(end) = '/';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '/');
    set(handles.text1, 'String', textString);
end
function Mult_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString(end) == '*'
   set(handles.text1, 'String', textString);
elseif contains('+-/', textString(end))
    textString(end) = '*';
    set(handles.text1, 'String', textString);
elseif textString(end) == '.'
    textString(end) = '*';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '*');
    set(handles.text1, 'String', textString);
end
function Back_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if (length(textString) > 2)&&(contains('0.', textString(end - 1: end)))
    textString = textString(1: end - 2);
    set(handles.text1, 'String', textString);
elseif length(textString) >= 2
    textString = textString(1: end - 1);
    set(handles.text1, 'String', textString);
else
    set(handles.text1, 'String', '0')
end
function Btn7_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '7');
elseif (textString(end) == '0')&&(contains('+-*/', textString(end - 1)))
    textString(end) = '7';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '7');
    set(handles.text1, 'String', textString);
end
function Btn8_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '8');
elseif (textString(end) == '0')&&(contains('+-*/', textString(end - 1)))
    textString(end) = '8';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '8');
    set(handles.text1, 'String', textString);
end
function Btn9_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '9');
elseif (textString(end) == '0')&&(contains('+-*/', textString(end - 1)))
    textString(end) = '9';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '9');
    set(handles.text1, 'String', textString);
end
function Sub_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString(end) == '-'
   set(handles.text1, 'String', textString);
elseif contains('+*/', textString(end))
    textString(end) = '-';
    set(handles.text1, 'String', textString);
elseif textString(end) == '.'
    textString(end) = '-';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '-');
    set(handles.text1, 'String', textString);
end
function Btn4_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '4');
elseif (textString(end) == '0')&&(contains('+-*/', textString(end - 1)))
    textString(end) = '4';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '4');
    set(handles.text1, 'String', textString);
end
function Btn5_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '5');
elseif textString(end) == '0' && contains('+-*/', textString(end - 1))
    textString(end) = '5';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '5');
    set(handles.text1, 'String', textString);
end
function Btn6_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String','6');
elseif textString(end)=='0' && contains('+-*/', textString(end - 1))
    textString(end) = '6';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '6');
    set(handles.text1, 'String', textString);
end
function Add_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString(end) == '+'
   set(handles.text1, 'String', textString);
elseif contains('*-/', textString(end))
    textString(end) = '+';
    set(handles.text1, 'String', textString);
elseif textString(end) == '.'
    textString(end) = '+';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '+');
    set(handles.text1, 'String', textString);
end
function Btn1_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '1');
elseif textString(end) == '0' && contains('+-*/', textString(end - 1))
    textString(end) = '1';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '1');
    set(handles.text1, 'String', textString);
end
function Btn2_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '2');
elseif textString(end) == '0' && contains('+-*/', textString(end - 1))
    textString(end) = '2';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '2');
    set(handles.text1, 'String', textString);
end
function Btn3_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', '3');
elseif textString(end) == '0' && contains('+-*/', textString(end - 1))
    textString(end) = '3';
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '3');
    set(handles.text1, 'String', textString);
end
function Btn0_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if textString == '0'
    set(handles.text1, 'String', textString);
elseif textString(end) == '0' && contains('+-*/', textString(end - 1))
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '0');
    set(handles.text1, 'String', textString);
end
function Point_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
n = length(textString);
if (~contains(textString, '+'))&&(~contains(textString, '-'))&&... 
        (~contains(textString, '*'))&&(~contains(textString, '/'))
    flag = 0;
else
    flag = 1;
end
if flag == 1
    for i = n: -1: 1
        if contains('+-*/', textString(i))
            n = i; 
            break
        end       
    end
end
if textString(end) == '.'
    set(handles.text1, 'String', textString)
elseif contains('+-*/', textString(end))
    textString = strcat(textString, '0.');
    set(handles.text1, 'String', textString);
elseif (flag == 1)&&(contains(textString(n: end), '.'))
    set(handles.text1, 'String', textString);
elseif (flag == 0)&&(contains(textString, '.'))
    set(handles.text1, 'String', textString);
else
    textString = strcat(textString, '.');
    set(handles.text1, 'String', textString);
end
function Equal_Callback(hObject, eventdata, handles)
textString = get(handles.text1, 'String');
if contains('+-*/', textString(end))
    textString=textString(1: end - 1);
end
if (~contains(textString, '+'))&&(~contains(textString, '-'))&&... 
        (~contains(textString, '*'))&&(~contains(textString, '/'))
    set(handles.text1,'String', textString);
else
	ans = eval(textString);
    if ans == inf
        set(handles.text1, 'String', '0');
        errordlg('分母不能为零');
    else
        set(handles.text1, 'String', ans);
    end
end
