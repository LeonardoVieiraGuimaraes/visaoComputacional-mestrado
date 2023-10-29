%-----------------------README-----------------------------------%
README for Fractal Dimension Program.
-----------------------------------------------------------------
Este arquivo cont�m informa��es b�sicas de como 
executar e testar o programa de c�lculo de dimens�o fractal.


Princ�pios desse programa
-----------------------------------------------------------------

Este programa em Matlab calcula a dimens�o fractal de uma figura 
atrav�s da t�cnica de  Box-Counting. 

INSTRU��ES
-----------------------------------------------------------------

Este programa executa com o Matlab Version 6.5 Release 13.
Os usu�rios do Matlab devem ter instalado o Toolbox de 
processamento de imagem.

Extraia o diret�rio "imagens" para o mesmo diret�rio dos demais arquivos zipados.

Utilize apenas imagens do tipo ".png" .

Para iniciar o programa de c�lculo de dimens�o fractal 
digite na tela de comando do matlab o seguinte: main  
ou para utilizar o programa sem interface gr�fica digite: boxcounting('nome da imagem.png'); .

LiSTA DE ARQUIVOS PERTENCENTES AO PROGRAMA:
-----------------------------------------------------------------
main.fig
main.m        - cont�m c�digo para a interface gr�fica.
boxcounting.m - cont�m duas fun��es (boxcounting e contar) que efetivamente 
                 calculam a dimens�o fractal.




ARQUIVO DE ENTRADA
-----------------------------------------------------------------

Os arquivos de entrada desse programa s�o imagens '.png'



PARAMETROS DE SA�DA
------------------------------------------------------------------
dimensao- dimens�o fractal
original- imagem original
grafico1- vetor com o log (N(s)) de todas as intera��es
grafico2- vetor com o log (1/s) de todas as intera��es
-----------------------------------------------------------------


Mais detalhes podem ser encontrados no endereco :
http://www.cbpf.br/cat/lpdsi/boxcount

AUTORES
------------------------------------------------------------------
Marcelo Portes de Albuquerque
Contact: marcelo_at_cbpf.br

Maysa Malfiza Garcia de Macedo
Contact: maysagm_at_cbpf.br
         maysa4_at_bol.com.br

Dario Oliveira
Contact: dario_at_cbpf.br

Marcio Portes de Albuquerque
Contact: albuquer_at_cbpf.br






