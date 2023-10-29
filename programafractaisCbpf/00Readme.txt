%-----------------------README-----------------------------------%
README for Fractal Dimension Program.
-----------------------------------------------------------------
Este arquivo contém informações básicas de como 
executar e testar o programa de cálculo de dimensão fractal.


Princípios desse programa
-----------------------------------------------------------------

Este programa em Matlab calcula a dimensão fractal de uma figura 
através da técnica de  Box-Counting. 

INSTRUÇÕES
-----------------------------------------------------------------

Este programa executa com o Matlab Version 6.5 Release 13.
Os usuários do Matlab devem ter instalado o Toolbox de 
processamento de imagem.

Extraia o diretório "imagens" para o mesmo diretório dos demais arquivos zipados.

Utilize apenas imagens do tipo ".png" .

Para iniciar o programa de cálculo de dimensão fractal 
digite na tela de comando do matlab o seguinte: main  
ou para utilizar o programa sem interface gráfica digite: boxcounting('nome da imagem.png'); .

LiSTA DE ARQUIVOS PERTENCENTES AO PROGRAMA:
-----------------------------------------------------------------
main.fig
main.m        - contém código para a interface gráfica.
boxcounting.m - contém duas funções (boxcounting e contar) que efetivamente 
                 calculam a dimensão fractal.




ARQUIVO DE ENTRADA
-----------------------------------------------------------------

Os arquivos de entrada desse programa são imagens '.png'



PARAMETROS DE SAÍDA
------------------------------------------------------------------
dimensao- dimensão fractal
original- imagem original
grafico1- vetor com o log (N(s)) de todas as interações
grafico2- vetor com o log (1/s) de todas as interações
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






