####################
# [18.02.2021]00:30#
####################


####################
#Hola Ray, 
#he ordenado el Excel de Conductor, 
#apartado de los fármacos, el resto esta ok, 
#bueno a ver cuanto salen con ulceras teniendo en cuenta las amputaciones también.
#De Manel, tengo que separar las combinaciones de los fármacos antidiabéticos y
#te pasare un Excel de códigos y conductor diferente para que se confunda con el de epiPEUCAT. 
#Pero quizás tu lo puedes hacer mas fácil en nivel de "R", 
#contando cada combinación por separado, hare lo que tu me digas que es mas fácil para ti..
#Gracias
#B
#################### 



# 02.02.2021    #

# eps els Pie diabético--> tiene las amputaciones!!!

#################

#https://www.fesemi.org/sites/default/files/documentos/ponencias/xii-congreso-somimaca/Dra.%20Gonzalez.pdf


#Hola Comento coses

#Ray: 
#  - No facis els p-valors, ni model logistic,
#abans jo faria l'analisis que correspongui als objectius de la investigació (Ho comentem), 
#ademés s'han de crear les noves variables

#- Per tant si que cal generar les noves variables que comenta el Bogdan
#(Una vegada estiguin creades procedirem als analisis pertinents)

#Bogdan: 
#  - El tema de códigos, ya te lo hemos comentado alguna vez, (Se que para ti te parece una chorrada) pero hay una reglas para que todo funcione:  
#  
#  * Los nombres de los agrupadores tienen que ser: Cortos, informativos , sin acentos, sin espacios, sin caracteres extraños (+ / & % *  etc...). 
#  * En el campo descripción puedes poner lo que quieras
#  * No se trata de generar un agrupador nuevo por columna, sinó que en la misma columna poner el nombre del nuevo agrupador. 
#  * Si un código corresponde a dos agrupadores distintos, entonces: O bien se crea una columna nueva, o bien se duplica ese código
#  * Importante: Un agrupador de una lista de códigos que incluye es concepto (p- ejem DM= CIM:E11-E14),  por lo tanto és un OR. No un AND, el And se tiene que hacer a posteriori
#
#- La idea de este sistema es que el control de la creación del agrupador (variable) lo tenga el investigador, y evitar fallos nuestros de sintaxis. 
#- Si , sé que podemos hacerlo nosotros , pero la idea es repartir responsabilidades, y minimizar fallos, ya que no somos clínicos. 
#- De todas maneras ahora lo arreglamos nosotros , te lo comento para futuros proyectos

#- Tema Manel 

#Ho hem de parlar

#Fins aviat

#Hola Jordi,

#Las nuevas  variables están dentro del Excel códigos, 
#y se han hecho  de la misma manera como se ha hecho las otras variables, 
#si quieres cambio los nombres de agrupadores en mas pequeños, pero la idea es esta, 
#de re-agrupar algunas variables para se pueden sacara estas nuevas variables.

#Lo que vamos a publicar es esto, 
#un análisis bivariante con 2 grupos sin/con ulceras + modelo
#para ver lo que se relaciona con una nueva ulcera, 
#y creo que ahora es buen momento empezar con esta fase.



#Lástima esta idea de nueva úlcera y factores asociados no se pensó cuando se hizo el protocolo, 
#ya que se podría haber diseñado para responder este objetivo, y no los que constan en el protocolo. 



#OK, el análisis bivariante encaja con el objetivo secundario:
#Conocer el perfil clínico de los pacientes con ulceras y pie diabético, 
#comorbilidades importantes (véase tabla 2)
#y medicación concomitante en comparación con el paciente sin complicaciones en extremidades inferiores.

#Conocer la prevalencia de las complicaciones micro-vasculares 
#(retinopatía diabética, neuropatía diabética, nefropatía diabética)
#y macro-vasculares (cardiopatía isquémica, arteriopatía periférica y accidente cerebrovascular)
#en población DM2 con UEIP


#- Conocer el perfil clínico (+  complicaciones micro-macro)
#de los pacientes con úlcera lo cubriria el descriptivo de este grupo (pacientes con UEIP). 

#El modelo logístico se puede hacer pero tiene un problema,
#que es el alto riesgo de sesgo de reversibilidad, ya que no sabemos si la Ulcera es post o pre complicación y/o Factor evaluado. ya que todo es prevalente. Para hacer-lo bien se tendria que haber diseñado una cohorte, aunque con un periodo corto, seleccionando DM's libres de úlcera
#Jordi



#Modelo logístico es extra pero se puede hacer con este diseño, es un modelo explicativo nada mas.


#02.02.2021

#Gracias Ray, 

#Una cosita...salen solo las insulinas mixtas, 
#faltan el resto de insulinas
#y están en el excel de conductores, puedes comprobar por que no sale en el informe? 

#Gracias
#B
###################################################################################################
#FF.InAccInt           	Fármacos Insulina acción intermedia	Insulin drugs intermediate action
#FF.InAccLenta         	Fármacos Insulina acción lenta	Insulin drugs slow action
#FF.InAccRapida      	Fármacos Insulina acción rápida
#Insulin fast acting drugs
#FF.InMixta            	Fármacos Insulina mixta	Drugs Insulin mixed
###################################################################################################
#
#FF.InAccInt           
#FF.InAccLenta         	
#FF.InAccRapida      	
#FF.InMixta            	
###################################################################################################









#Hola Ray,
#No entiendo por que salen

# dilluns 1.Feb! mirar-ho!
#fet!




#Luego porque no calculas 

############################################################################################################
###   arteriopatía neuropatía y insuficiencia renal sobre los 6465
############################################################################################################
#
#
#i)
#tanto missing para PAS/ PAD 
#es una de las variable que se recoge mejor en la bbdd 97.02% de prevalencia!!!
#PAS/PAD: 6465
#1. < 90/60 3 (0.05%)
#2. [90/60-120/80) 520 (8.04%)
#3. [120/80-140/90) 983 (15.2%)
#4. >=140/90 210 (3.25%)
#'Missing' 4749 (73.5)

#S'ha fet així:
#################################################################################################################################
#PAS_PAD=case_when(  PAS.valor<90 & PAD.valor<60~ 1,
#                   (PAS.valor>=90 & PAD.valor>=60) & (PAS.valor<120 & PAD.valor<80) ~ 2, 
#                   (PAS.valor>=120 & PAD.valor>=80) & (PAS.valor<140 & PAD.valor<90) ~ 3,
#                    PAS.valor>=140 & PAD.valor>=90~ 4))
#################################################################################################################################
#MIRAR-HO DILLUNS!


############################################################################################################
###ii)   Arteriopatia periférica :[diagnos????co registrado o el valor de ITB (<0.9)] 499 (64.5%) 77
#OK!!!

############################################################################################################
###iii)   Nefropatía Diabetica y/o diagnóstico de insuficiencia renal y/o proteinuria y/o [FG, FG<60 y/o CAC>30
#     1992 (50.3%)
#     3958
#OK!!

############################################################################################################
###iv)    Insuficiencia Renal Crónica:[según valores de FG, FG<60 y/o CAC>30]
##    1893 (48.6%)
##    3893
#OK!!
############################################################################################################
#
#
# Gracias
# B
############################################################################################################


#
#
#################
# [26.01.2021]  #
#################
#
#Ray, 
#he revisado el epipeucat, 
#había códigos en amputaciones repetidos, los he eliminado , están el la pestaña eliminados, 
#..son códigos de la misma fuente, mismos códigos. He cambiado el nombre de agrupador es: AGR::
#AMPUTACIO_Ext_inferiorny la descripcion Amputacion extremidad inferior
#
#amputaciones==AMPUTACIO_Ext_inferior
#
#..tambien habia un pequeño error en agrupador de revascularizaciones, ahora el agrupador es:
#IQ_ART la descripcion es: Revascularizacion de miembros inferiores

#revascularizaciones==IQ_ART


#¡Ya se puede actualizar el informe a ver qué sale!
  
#Te envio el otro excel de manel entre hoy y mañana, 
#requiere más trabajo, hay que crear agrupadores que quiere Manel
#gracias



################
#[08.01.2021]
################

#dubte:

#Hola Ray,

#He revisado el ultimo informe de epiPEUCAT que me enviaste, 
#adjunto el PDF con los comentarios, lo que no entiendo en la tabla 2 Taula 00.Variables TOTALS.
#Ulcera/Pie Diabético(Primaria+Hospital).1 año antes hacia atrás:

#Si es del ultimo año desde la fecha tall 31/12/2018, por que todavía salen en el grupo " sin ulceras y pie diabético" 
#códigos de : ulceras, charcot, osteomielitis, es que no deberían salir,
#si alguien de este grupo tiene estos códigos en los últimos 12 meses es  un  pacientes con ulcera/pie diabético.

#solucio::
#* per que aquestes son prèvies!,poden ser més d'un any enrera!!!! ANTECEDENTES!!



#Estamos esperando códigos de amputaciones, pero esto lo tenemos que solucionar antes
#Gracias
#B



#####################
#[22.12.2020] :17:35#
#####################
#
#
#Adjunto el Excel con los agrupadores para amputaciones y revascularizaciones. 
#Jordi tiene los datos, 
#con esto ya puedes seguir con el análisis de epiPEUCAT, 
#a ver que sale con estos datos. 
#Seguimos trabajando con una muestra de 10000 pacientes, 
#tener en cuenta por favor la ultima decisión para definir los 2 grupos:
#i) Taula 
#Ulcera/Pie Diabético(Primaria+Hospital) us  NO [Ulcera/Pie Diabético(Primaria+Hospital)] 
#La finestra de l'agregador és 1 ANY anterior,(-365 dies)>


#Se tiene que crear una variable que son antecedentes de ulceras/pie diabético 
#que incluye los registros fuera de esta ventana

#Cualquier duda hablamos,


#[14.12.2020] :13:30
#####################
#01.12.2020 :DIMARTS
#####################
#16.11.2020 DILLUNS
#####################
#05.11.2020  -->18:40
#####################
#30.10.2020  -->10:30
#29.10.2020
#28.10.2020 
#27.10.2020
#26.10.2020
#25.10.2020
#24.10.2020
#23.10.2020
#22.10.2020
#21.10.2020
#19.10.2020
#16.10.2020: -->18:20
#08.09.2020: -->10:54
#07.09.2020: -->11:41
#25.09.2020: -->11:33
#01.OCT.2020:-->10:56
#02.OCT.2020:-->16:00
#06.OCT.2020:-->11:42
#07.OCT-2020:-->10:18
#####################
#install.packages("vctrs")
#install.packages("dplyr")
#####################
#
# 20.11.2020
#
#
#
#
#Adjunto el Excel modificado,
#hemos eliminado las osteomielitis de otras partes, con esto ya puedes hacer un nuevo anÃ¡lisis.
#
#Importante:
#  
#La ventana para pie diabÃ©tico debe ser de un aÃ±o previo a la fecha tall (31/12/2018--Ã 365 dias )
#
#
#
#i) Agregacio_Problemes_de_Salut:
#  
#  -a partir del dia Index: 31.12.2018, s'ha mirat enrera  infinit dies [com abans].
#
#
#ii)  Agregacio_Facturacio:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera 90 dies [3 mes].
#
#
#
#iii)  Agregacio_Tabaquisme:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  infinit dies [com abans]. 
#
#iv)  Agregacio_AnalÃ???tiques:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES  , [dia mes proxim]. 
#
#v)  Agregacio_Derivacions:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES.
#
#vi)  Agregacio_Cliniques:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES  , [dia mes proxim]. 
#
#Solo 2 grupos con ulcera/pie diabÃ©tico 
#( primaria+hospitales) VS .sin ulcera/pie diabÃ©tico (primaria+hospitales)
#
#Estamos esperando los codigos de amputaciones y 
#de procedimientos vasculares de SIDIAP asi que este periodo solo trabajaremos
#con la muestra de 10000 pacientes.
##############################################################################################



#Se trata de la definiciÃ³n de Pie diabÃ©tico, y con ello deberÃ???amos cerrar el tema:
  
#Pie diabÃ©tico :
#...es la destrucciÃ³n de tejido en el pie de una paciente con DIABETES con neuropatÃ???a y/o arteriopatÃ???a. 
#Esta destrucciÃ³n de tejido es habitualmente en forma de Ãºlcera por debajo de tobillo; 
#por encima no se considera pie diabÃ©tico,

#aunque puede ser una artropatÃ???a de Charcot tambiÃ©n. 
#Por tanto, como hay un infraregistro de neuro y arteriopatÃ???a, 
#deberemos asumir lo siguiente:

###- Las Ãºlceras en el pie en esta base se deben hacer equivaler a Pie diabÃ©tico (aunque sea una limitaciÃ³n)
###- Los Charcot tambiÃ©n se considera pie diabÃ©tico, pero es importante tener el dato en la descripciÃ³n
###- Los diagnÃ³sticos de Pie diabÃ©tico sean en hospital o primaria debemos asumir que se han registrado correctamente
###- Una cosa es el anÃ¡lisis de todos los pacientes con algÃºn registro que equivalga a pie diabÃ©tico: 
###  serÃ¡ interesante saber cuÃ¡ntos tienen el registro en primaria y hospital, cuÃ¡ntos solo en primaria, y cuÃ¡ntos solo en el hospital. Esto serÃ¡ un descriptivo de los pacientes con Pie diabÃ©tico para ver por quÃ© grupos estÃ¡ cosntituido el grupo CON pie diabÃ©tico.
###- Para la comparaciÃ³n con los que no tienen Pie diabÃ©tico (la n es de 6166 segÃºn los datos que nos pasaste) hay que hacer un solo grupo CON pie diabÃ©tico y hacer la comparaciÃ³n con los 6.166

#Adjunto el documento con instrucciones 
#y el Excel con el agrupador nuevo agr9 que incluye estas variables.
#Ojo, hay que vigilar excluir los duplicados, 
#la idea es crear un grupo tanto de primaria como de hospitales,
#que incluye las variables de pie diabÃ©tico y de ulceras de miembro inferior + charcot,  
#y este grupo compararlo con el grupo sin pie y sin ulcera

#No hay que borrar lo anterior, si no aÃ±adir esta nueva variable y anÃ¡lisis al informe que tenemos.

#################################################################
#[[ PIE+Ulcera MI ]]-> pie diabÃ¨tico+Ãºlcera miembro inferior!!!]]
#################################################################
#params = list(dir_dades="../DADES/PREVAL_DM2/sidiap/mostra", year= year),

#----------------------------------------------------------------------------------------#
library("dplyr")
rm(list=ls())
#dir_dades="dades/mostra"
#----------------------------------------------------------------------------------------#
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
#----------------------------------------------------------------------------------------# 
rmarkdown::render(input="./codi/1_lectura_epipeu.Rmd",
                  output_file=here::here("outputs/informe_lectura_final.html"),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/2_preparacio_epipeu.Rmd",
                  output_file=here::here("outputs/informe_preparacio_final.html"),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/3_analisis_epipeu.Rmd",
                  output_file=here::here("outputs/informe_exploratori_final.html"),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/3_analisis_epipeu2.Rmd",
                  output_file=here::here("outputs/informe_exploratori_final2.html"),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#



