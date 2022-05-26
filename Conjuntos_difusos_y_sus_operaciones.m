function varargout = Conjuntos_difusos_y_sus_operaciones(varargin)
% CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES MATLAB code for Conjuntos_difusos_y_sus_operaciones.fig
%      CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES, by itself, creates a new CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES or raises the existing
%      singleton*.
%
%      H = CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES returns the handle to a new CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES or the handle to
%      the existing singleton*.
%
%      CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES.M with the given input arguments.
%
%      CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES('Property','Value',...) creates a new CONJUNTOS_DIFUSOS_Y_SUS_OPERACIONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Conjuntos_difusos_y_sus_operaciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Conjuntos_difusos_y_sus_operaciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Conjuntos_difusos_y_sus_operaciones

% Last Modified by GUIDE v2.5 07-Mar-2022 08:45:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Conjuntos_difusos_y_sus_operaciones_OpeningFcn, ...
                   'gui_OutputFcn',  @Conjuntos_difusos_y_sus_operaciones_OutputFcn, ...
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


% --- Executes just before Conjuntos_difusos_y_sus_operaciones is made visible.
function Conjuntos_difusos_y_sus_operaciones_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Conjuntos_difusos_y_sus_operaciones (see VARARGIN)

% Choose default command line output for Conjuntos_difusos_y_sus_operaciones
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global t v
t = 0:0.1:4;
v = [-0.2 4.2 -0.2 1.2];
miu = con_tri(t);
grafica_difuso(t, miu, false, handles.grafica, 1, 0, v);
handles.tipo_valor.Visible = 'Off';
handles.tipo_valor2.Visible = 'Off';
handles.tipo_valor3.Visible = 'Off';
handles.text8.Visible = 'Off';
handles.valor_miuB.Visible = 'Off';
handles.texto_operacion.Visible = 'Off';
handles.tipo.Visible = 'Off';
handles.valor_operacion.Visible = 'Off';
handles.intervalo.String = "[0 4]";
handles.texto_operacion.String = 'Valor de operacion';


% UIWAIT makes Conjuntos_difusos_y_sus_operaciones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Conjuntos_difusos_y_sus_operaciones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function valor_miuA_Callback(hObject, eventdata, handles)
% hObject    handle to valor_miuA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor_miuA as text
%        str2double(get(hObject,'String')) returns contents of valor_miuA as a double


% --- Executes during object creation, after setting all properties.
function valor_miuA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor_miuA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valor_miuB_Callback(hObject, eventdata, handles)
% hObject    handle to valor_miuB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor_miuB as text
%        str2double(get(hObject,'String')) returns contents of valor_miuB as a double


% --- Executes during object creation, after setting all properties.
function valor_miuB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor_miuB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valor_operacion_Callback(hObject, eventdata, handles)
% hObject    handle to valor_operacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valor_operacion as text
%        str2double(get(hObject,'String')) returns contents of valor_operacion as a double


% --- Executes during object creation, after setting all properties.
function valor_operacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valor_operacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in operacion.
function operacion_Callback(hObject, eventdata, handles)
% hObject    handle to operacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
operacion_actual = get(hObject,'Value');
if operacion_actual == 1
    handles.tipo.Visible = 'Off';
    handles.tipo_valor2.Visible = 'Off';
    handles.tipo_valor.Visible = 'Off';
    handles.tipo_valor3.Visible = 'Off';
    handles.text8.Visible = 'Off';
    handles.valor_miuB.Visible = 'Off';
    handles.texto_operacion.Visible = 'Off';
    handles.valor_operacion.Visible = 'Off';
elseif operacion_actual == 2
    handles.tipo.Visible = 'Off';
    handles.tipo_valor2.Visible = 'Off';
    handles.tipo_valor3.Visible = 'Off';
    handles.tipo_valor.Visible = 'Off';
    handles.text8.Visible = 'Off';
    handles.valor_miuB.Visible = 'Off';
    handles.texto_operacion.Visible = 'On';
    handles.valor_operacion.Visible = 'On';
elseif operacion_actual == 3
    handles.tipo.Visible = 'On';
    handles.tipo_valor.Visible = 'On';
    handles.tipo_valor3.Visible = 'Off';
    handles.tipo_valor2.Visible = 'Off';
    handles.text8.Visible = 'On';
    handles.valor_miuB.Visible = 'On';
    handles.texto_operacion.Visible = 'On';
    handles.valor_operacion.Visible = 'On';
    handles.tipo.String = 'Tipo de conjuncion';
elseif operacion_actual == 4
    handles.tipo.Visible = 'On';
    handles.tipo_valor.Visible = 'Off';
    handles.tipo_valor2.Visible = 'On';
    handles.tipo_valor3.Visible = 'Off';
    handles.text8.Visible = 'On';
    handles.valor_miuB.Visible = 'On';
    handles.texto_operacion.Visible = 'On';
    handles.valor_operacion.Visible = 'On';
    handles.tipo.String = 'Tipo de disyuncion';
else
    handles.tipo.Visible = 'On';
    handles.tipo_valor.Visible = 'Off';
    handles.tipo_valor2.Visible = 'Off';
    handles.tipo_valor3.Visible = 'On';
    handles.text8.Visible = 'On';
    handles.valor_miuB.Visible = 'On';
    handles.texto_operacion.Visible = 'On';
    handles.valor_operacion.Visible = 'On';
    handles.tipo.String = 'Tipo de implicacion';
end
% Hints: contents = cellstr(get(hObject,'String')) returns operacion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from operacion


% --- Executes during object creation, after setting all properties.
function operacion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tipo_valor.
function tipo_valor_Callback(hObject, eventdata, handles)
% hObject    handle to tipo_valor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipo_valor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipo_valor


% --- Executes during object creation, after setting all properties.
function tipo_valor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipo_valor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in conjunto.
function conjunto_Callback(hObject, eventdata, handles)
% hObject    handle to conjunto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t v
conjunto_actual = get(hObject,'Value');
if conjunto_actual == 1
    t = 0:0.1:4;
    v = [-0.2 4.2 -0.2 1.2];
    handles.intervalo.String = "[0 4]";
elseif conjunto_actual == 2
    t = 0:0.1:6;
    v = [-0.2 6.2 -0.2 1.2];
    handles.intervalo.String = "[0 6]";
elseif conjunto_actual == 3
    t = 0:0.1:6;
    v = [-0.2 6.2 -0.2 1.2];
    handles.intervalo.String = "[0 6]";
elseif conjunto_actual == 4
    t = 0:0.1:8;
    v = [-0.2 8.2 -0.2 1.2];
    handles.intervalo.String = "[0 8]";
else
    t = 0:0.1:4.5;
    v = [-0.2 4.7 -0.2 1.2];
    handles.intervalo.String = "[0 4.5]";
end
% Hints: contents = cellstr(get(hObject,'String')) returns conjunto contents as cell array
%        contents{get(hObject,'Value')} returns selected item from conjunto


% --- Executes during object creation, after setting all properties.
function conjunto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to conjunto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function intervalo_Callback(~, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of intervalo as text
%        str2double(get(hObject,'String')) returns contents of intervalo as a double


% --- Executes during object creation, after setting all properties.
function intervalo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to intervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x_Callback(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x as text
%        str2double(get(hObject,'String')) returns contents of x as a double


% --- Executes during object creation, after setting all properties.
function x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generar.
function generar_Callback(hObject, eventdata, handles)
% hObject    handle to generar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t v
x = str2double(get(handles.x,'String'));
operacion_actual = get(handles.operacion,'Value');
conjunto_actual = get(handles.conjunto,'Value');
switch operacion_actual
    case 1
        switch conjunto_actual
            case 1
                miuA = con_tri(t);
                miu_esp = con_tri(x);
            case 2
                miuA = con_tra(t);
                miu_esp = con_tra(x);
            case 3
                miuA = con_ga1(t);
                miu_esp = con_ga1(x);
            case 4
                miuA = con_ga2(t);
                miu_esp = con_ga2(x);
            case 5
                miuA = con_gau(t);
                miu_esp = con_gau(x);
            otherwise
                miuA = con_pex(t);
                miu_esp = con_pex(x);
        end
        handles.valor_miuA.String = miu_esp;
        grafica_difuso(t, miuA, false, handles.grafica, x, miu_esp, v);
    case 2
        switch conjunto_actual
            case 1
                miuA = con_tri(t);
                miu_esp = con_tri(x);
            case 2
                miuA = con_tra(t);
                miu_esp = con_tra(x);
            case 3
                miuA = con_ga1(t);
                miu_esp = con_ga1(x);
            case 4
                miuA = con_ga2(t);
                miu_esp = con_ga2(x);
            case 5
                miuA = con_gau(t);
                miu_esp = con_gau(x);
            otherwise
                miuA = con_pex(t);
                miu_esp = con_pex(x);
        end
        handles.valor_miuA.String = miu_esp;
        handles.valor_operacion.String = 1-miu_esp;
        grafica_difuso(t, miuA, true, handles.grafica, x, miu_esp, v);
    case 3
        tipo_actual = get(handles.tipo_valor, 'Value');
        switch conjunto_actual
            case 1
                miuA = con_tri(t);
                miu_esp = con_tri(x);
                miuB = con_tri2(t);
                miuB_esp = con_tri2(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
            case 2
                miuA = con_tra(t);
                miu_esp = con_tra(x);
                miuB = con_tra2(t);
                miuB_esp = con_tra2(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
            case 3
                miuA = con_ga1(t);
                miu_esp = con_ga1(x);
                miuB = con_ga12(t);
                miuB_esp = con_ga12(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
            case 4
                miuA = con_ga2(t);
                miu_esp = con_ga2(x);
                miuB = con_ga22(t);
                miuB_esp = con_ga22(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
            case 5
                miuA = con_gau(t);
                miu_esp = con_gau(x);
                miuB = con_gau2(t);
                miuB_esp = con_gau2(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
            otherwise
                miuA = con_pex(t);
                miu_esp = con_pex(x);
                miuB = con_pex2(t);
                miuB_esp = con_pex2(x);
                switch tipo_actual
                    case 1
                        conj = conj_dra(miuA, miuB);
                        conj_esp = conj_dra(miu_esp, miuB_esp);
                    case 2
                        conj = conj_pro(miuA, miuB);
                        conj_esp = conj_pro(miu_esp, miuB_esp);
                    case 3
                        conj = conj_dif(miuA, miuB);
                        conj_esp = conj_dif(miu_esp, miuB_esp);
                    otherwise
                        conj = conj_sen(miuA, miuB);
                        conj_esp = conj_sen(miu_esp, miuB_esp);
                end
        end
        handles.valor_miuA.String = miu_esp;
        handles.valor_miuB.String = miuB_esp;
        handles.valor_operacion.String = conj_esp;
    axes(handles.grafica)
    plot(t, miuA, 'LineWidth', 1.5)
    axis(v)
    title('Grafica de conjunto difuso');
    hold on
    plot(x, miu_esp, 'r*')
    plot(t, miuB, 'LineWidth', 1.5)
    plot(x, miuB_esp, 'o-')
    hold off
    lgd = legend({'μA(x)' 'Valor de μA(x)' 'μB(x)' 'Valor de μB(x)'});
    lgd.Location = 'NorthWest';
    
    figure
    plot(t, conj, 'LineWidth', 1.5)
    axis(v)
    xlabel('x')
    ylabel('i(μA(x), μB(x))')
    hold on
    plot(x, conj_esp, 'o')
    hold off
    
    case 4
        tipo_actual = get(handles.tipo_valor2, 'Value');
        switch conjunto_actual
            case 1
                miuA = con_tri(t);
                miu_esp = con_tri(x);
                miuB = con_tri2(t);
                miuB_esp = con_tri2(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
            case 2
                miuA = con_tra(t);
                miu_esp = con_tra(x);
                miuB = con_tra2(t);
                miuB_esp = con_tra2(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
            case 3
                miuA = con_ga1(t);
                miu_esp = con_ga1(x);
                miuB = con_ga12(t);
                miuB_esp = con_ga12(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
            case 4
                miuA = con_ga2(t);
                miu_esp = con_ga2(x);
                miuB = con_ga22(t);
                miuB_esp = con_ga22(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
            case 5
                miuA = con_gau(t);
                miu_esp = con_gau(x);
                miuB = con_gau2(t);
                miuB_esp = con_gau2(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
            otherwise
                miuA = con_pex(t);
                miu_esp = con_pex(x);
                miuB = con_pex2(t);
                miuB_esp = con_pex2(x);
                switch tipo_actual
                    case 1
                        conj = disy_dra(miuA, miuB);
                        conj_esp = disy_dra(miu_esp, miuB_esp);
                    case 2
                        conj = disy_sum(miuA, miuB);
                        conj_esp = disy_sum(miu_esp, miuB_esp);
                    case 3
                        conj = disy_est(miuA, miuB);
                        conj_esp = disy_est(miu_esp, miuB_esp);
                    otherwise
                        conj = disy_aco(miuA, miuB);
                        conj_esp = disy_aco(miu_esp, miuB_esp);
                end
        end
        handles.valor_miuA.String = miu_esp;
        handles.valor_miuB.String = miuB_esp;
        handles.valor_operacion.String = conj_esp;
        
    axes(handles.grafica)
    plot(t, miuA, 'LineWidth', 1.5)
    axis(v)
    title('Grafica de conjunto difuso');
    hold on
    plot(x, miu_esp, 'r*')
    plot(t, miuB, 'LineWidth', 1.5)
    plot(x, miuB_esp, 'o-')
    hold off
    lgd = legend({'μA(x)' 'Valor de μA(x)' 'μB(x)' 'Valor de μB(x)'});
    lgd.Location = 'NorthWest';
    
    figure
    plot(t, conj, 'LineWidth', 1.5)
    axis(v)
    xlabel('x')
    ylabel('u(μA(x), μB(x))')
    hold on
    plot(x, conj_esp, 'o')
    hold off
    
    otherwise
        tipo_actual = get(handles.tipo_valor3, 'Value');
        switch conjunto_actual
            case 1
                miuA = con_tri(t);
                miu_esp = con_tri(x);
                miuB = con_tri2(t);
                miuB_esp = con_tri2(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
            case 2
                miuA = con_tra(t);
                miu_esp = con_tra(x);
                miuB = con_tra2(t);
                miuB_esp = con_tra2(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
            case 3
                miuA = con_ga1(t);
                miu_esp = con_ga1(x);
                miuB = con_ga12(t);
                miuB_esp = con_ga12(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
            case 4
                miuA = con_ga2(t);
                miu_esp = con_ga2(x);
                miuB = con_ga22(t);
                miuB_esp = con_ga22(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
            case 5
                miuA = con_gau(t);
                miu_esp = con_gau(x);
                miuB = con_gau2(t);
                miuB_esp = con_gau2(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
            otherwise
                miuA = con_pex(t);
                miu_esp = con_pex(x);
                miuB = con_pex2(t);
                miuB_esp = con_pex2(x);
                switch tipo_actual
                    case 1
                        conj = impl_s(miuA, miuB);
                        conj_esp = impl_s(miu_esp, miuB_esp);
                    case 2
                        conj = impl_luk(miuA, miuB);
                        conj_esp = impl_luk(miu_esp, miuB_esp);
                    otherwise
                        conj = impl_zad(miuA, miuB);
                        conj_esp = impl_zad(miu_esp, miuB_esp);
                end
        end
        handles.valor_miuA.String = miu_esp;
        handles.valor_miuB.String = miuB_esp;
        handles.valor_operacion.String = conj_esp;
        
    axes(handles.grafica)
    plot(t, miuA, 'LineWidth', 1.5)
    axis(v)
    title('Grafica de conjunto difuso');
    hold on
    plot(x, miu_esp, 'r*')
    plot(t, miuB, 'LineWidth', 1.5)
    plot(x, miuB_esp, 'o-')
    %%
    plot(t, conj, 'LineWidth', 1.5)
    plot(x, conj_esp, 'o')
    %%
    hold off
    lgd = legend({'μA(x)' 'Valor de μA(x)' 'μB(x)' 'Valor de μB(x)' 'im(μA(x), μB(x))' 'Valor de implicacion'});
    lgd.Location = 'NorthWest';
    %{
    figure
    plot(t, conj, 'LineWidth', 1.5)
    axis(v)
    xlabel('x')
    ylabel('im(μA(x), μB(x))')
    hold on
    plot(x, conj_esp, 'o')
    hold off
    %}
end



% --- Executes on selection change in tipo_valor2.
function tipo_valor2_Callback(hObject, eventdata, handles)
% hObject    handle to tipo_valor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipo_valor2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipo_valor2


% --- Executes during object creation, after setting all properties.
function tipo_valor2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipo_valor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function grafica_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate grafica


% --- Executes on selection change in tipo_valor3.
function tipo_valor3_Callback(hObject, eventdata, handles)
% hObject    handle to tipo_valor3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns tipo_valor3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tipo_valor3


% --- Executes during object creation, after setting all properties.
function tipo_valor3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tipo_valor3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
