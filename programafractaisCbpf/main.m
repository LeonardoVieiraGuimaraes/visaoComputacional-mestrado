%--------------------------------------------------------------------------
% Program     : GPA Red Alert Pings (gpa_redalert_ping.c)

% Written by  : Maysa Macedo

% email       : marcelo_at_cbpf.br ; maysagm_at_cbpf.br, dario_at_cbpf.br;
% albuquer_at_cbpf.br

% Copyright(©): Centro Brasileiro de Pesquisas Fisicas - CBPF/MCT/Rio de Janeiro/Brazil

% Version     : 1.0

% Objective   : Dimension Fractal Computing

% Compiler    : Matlab 6.5

% Project     : 

% Authors     : Maysa Macedo, Dario oliveira, Marcelo Portes de Albquerque,
% Marcio Portes de Albuquerque

% Mode        : In Matlab 6.5 prompt, you should execute the comand: main

% Comments    : This program is distributed in the hope that it will be useful,
%                but WITHOUT ANY WARRANTY; without even the implied warranty of
%                MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. It is FREEWARE.   
%--------------------------------------------------------------------------



           
function varargout = main(varargin)

% Last Modified by GUIDE v2.5 13-Sep-2006 16:37:06
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)
% -----------------------------------------------------------------------------------------  
% Choose default command line output for main
handles.output = hObject;

handles.counter = 1;
handles.path ='.\imagens';
%handles.image_files=dir(fullfile(handles.path,'vonkoch1.png'));
handles.image_files=dir(fullfile(handles.path,'\*.png'));
aux=size(handles.image_files);
handles.numImagens = aux(1);
set(handles.ant,'Enable','off');
set(handles.ant,'ForegroundColor',[0.0,0.0,0.0])
if (handles.counter <= handles.numImagens)
    
    set(handles.text17,'String',strcat(strcat('.',strcat(handles.path,'\')),handles.image_files(handles.counter).name));
    CaminhoImagem  = strcat(strcat(handles.path,'/'),handles.image_files(handles.counter).name);
    ImagemOriginal = imread(CaminhoImagem);
    ImagemOriginal = imadjust(ImagemOriginal,[min(min(im2double(ImagemOriginal))) max(max(im2double(ImagemOriginal)))],[0 1]);
    ImagemOriginal = im2bw(ImagemOriginal);
    axes(handles.axes1);imshow(ImagemOriginal);
    matsize=size(ImagemOriginal);
    set(handles.text22,'String',strcat(strcat(num2str(matsize(1)),'x'),num2str(matsize(2))));
     
end

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in ant.
function ant_Callback(hObject, eventdata, handles)
% hObject    handle to ant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (handles.counter  > 1 && handles.counter<=handles.numImagens+1 )
    if (handles.counter==handles.numImagens+1)
           handles.counter = handles.counter - 2;
    else
           handles.counter = handles.counter - 1;
    end
    
      if (handles.counter <= handles.numImagens)
          set(handles.prox,'Enable','on');
           set(handles.prox,'ForegroundColor',[0.0,0.5019607843137255,1.0])
           set(handles.edit1,'String','');
           diretorio=handles.path;
           posicao = strfind(diretorio,'\');
           indice = numel(posicao);
           if ( indice > 2 )
               caract = posicao(indice-1);
               diretorio=diretorio(caract:end-1);
           end    
           set(handles.text17,'String',strcat(strcat('.',strcat(diretorio,'\')),handles.image_files(handles.counter).name));
           CaminhoImagem  = strcat(strcat(handles.path,'/'),handles.image_files(handles.counter).name);
           ImagemOriginal = imread(CaminhoImagem);
           ImagemOriginal = imadjust(ImagemOriginal,[min(min(im2double(ImagemOriginal))) max(max(im2double(ImagemOriginal)))],[0 1]);
           ImagemOriginal = im2bw(ImagemOriginal);
           axes(handles.axes1);imshow(ImagemOriginal);
           matsize=size(ImagemOriginal);
           set(handles.text22,'String',strcat(strcat(num2str(matsize(1)),'x'),num2str(matsize(2))));
        
        end
       if (handles.counter  == 1)
            set(handles.ant,'Enable','off');
            set(handles.ant,'ForegroundColor',[0.0,0.0,0.0])
       end
  
end




% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in prox.
function prox_Callback(hObject, eventdata, handles)
	% hObject    handle to prox (see GCBO)
	% eventdata  reserved - to be defined in a future version of MATLAB
	% handles    structure with handles and user data (see GUIDATA)
    
	if (handles.counter <= (handles.numImagens-1))
	    handles.counter = handles.counter + 1;
	end
	
	if (handles.counter <=handles.numImagens)
        
        set(handles.edit1,'String','');
        axes(handles.axes8);cla reset;
        diretorio=handles.path;
        posicao = strfind(diretorio,'\');
        indice = numel(posicao);
        if ( indice > 2 )
            caract = posicao(indice-1);
            diretorio=diretorio(caract:end-1);
        end    
    	set(handles.text17,'String',strcat(strcat('.',strcat(diretorio,'\')),handles.image_files(handles.counter).name));
        CaminhoImagem  = strcat(strcat(handles.path,'/'),handles.image_files(handles.counter).name);
        ImagemOriginal = imread(CaminhoImagem);
        ImagemOriginal = imadjust(ImagemOriginal,[min(min(im2double(ImagemOriginal))) max(max(im2double(ImagemOriginal)))],[0 1]);
        ImagemOriginal = im2bw(ImagemOriginal);
        axes(handles.axes1);imshow(ImagemOriginal);
        matsize=size(ImagemOriginal);
        set(handles.text22,'String',strcat(strcat(num2str(matsize(1)),'x'),num2str(matsize(2))));
		set(handles.ant,'Enable','on');
        set(handles.ant,'ForegroundColor',[0.0,0.5019607843137255,1.0]);
        if (handles.counter == handles.numImagens)
                 handles.counter=handles.counter+1;
                 set(handles.prox,'Enable','off');
                 set(handles.prox,'ForegroundColor',[0.0,0.0,0.0])
        end
        
    end
    
    %if (handles.counter <= (handles.numImagens-1))
	%    handles.counter = handles.counter + 1;
    %end
	% Update handles structure
	guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
        set(handles.edit1,'String','');
        nomeImagem=strcat(strcat(handles.path,'/'),handles.image_files(handles.counter).name);
        Imagem = BoxCounting(nomeImagem);
		axes(handles.axes8);
        p = polyfit(Imagem.grafico1,Imagem.grafico2,1);
        f = polyval(p,Imagem.grafico2);
        loglog(Imagem.grafico1,Imagem.grafico2,'o',Imagem.grafico2,f,'-');
        grid on
		set(handles.edit1,'String',Imagem.dimensao);
	


% --------------------------------------------------------------------
function menu_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function AbrirImagem_Callback(hObject, eventdata, handles)
% hObject    handle to Abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,path] = uigetfile('*.png','.\imagens');

if (path~=0)
    handles.path= path;
    handles.counter = 1;
    handles.image_files=dir(fullfile(handles.path,'\*.png'));
    aux=size(handles.image_files);
    handles.numImagens = aux(1);
    set(handles.ant,'Enable','off');
    set(handles.ant,'ForegroundColor',[0.0,0.0,0.0])
    posicao = strfind(path,'\');
    indice = numel(posicao);
    caract = posicao(indice-1);
    diretorio=path(caract:end);
    set(handles.text17,'String',strcat('..',strcat(diretorio,filename)));
    ImagemEntrada=imread(strcat(path,filename));
    ImagemEntrada = imadjust(ImagemEntrada,[min(min(im2double(ImagemEntrada))) max(max(im2double(ImagemEntrada)))],[0 1]);
    ImagemEntrada=im2bw(ImagemEntrada);
    axes(handles.axes1);imshow(ImagemEntrada);
    matsize=size(ImagemEntrada);
    set(handles.text22,'String',strcat(strcat(num2str(matsize(1)),'x'),num2str(matsize(2))));
    guidata(hObject, handles);
end   

function Sair_Callback(hObject, eventdata, handles)
% hObject    handle to Sair (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
button = questdlg('Deseja realmente sair?', ...
                            'Sair','Sim','Nao','Nao');
switch button
            case 'Sim',
               close
            case 'Nao',
              quit cancel;
end


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


