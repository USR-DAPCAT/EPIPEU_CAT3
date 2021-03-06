####################
# [08.03.2021]20:35#
####################

###################################################################################
#Hola Ray,
#Son m�nimos cambios en el agrupador AVC, 
#ahora no hay 2 categor�as si no un solo agrupador AVC. 
#Tambi�n me piden solo 2 categor�as de grado de riesgo de alcohol, 
#he creado una etiqueta nueva, pero creo que esto lo tienes que unificar tu en R.
###################################################################################

#Hola Ray,

#Adjunto la propuesta, 
#no es definitiva ya que estoy esperando los comentarios de Didac, 
#Josep y Magda, pero por lo menos puedes empezar montando el modelo. 

#Por ejemplo la variable duraci�n de diabetes habr� solo 2 categor�as, <5 a�os y mas de 5 a�os de diabetes, 
#etc. Este fin de tendremos las variables definitivas para modelo.
#fer-ho avui!

#Jordi Real, comenta:
#No s� si la prevalencia de ulceras de por si ya seria de inter�s
#En todo caso, si lo que se quiere es ver factores  relacionados con las �lceras, yo: 
#tirar�a un a�o para atr�s (Si tenemos datos) y calcular�a  incidencia de nueva �lcera (a un a�o),
#y factores asociados. #En este caso un modelo tendr�a menos riesgo de sesgo. 


####################
#Hola Ray, 
#he ordenado el Excel de Conductor, 
#apartado de los f�rmacos, el resto esta ok, 
#bueno a ver cuanto salen con ulceras teniendo en cuenta las amputaciones tambi�n.
#De Manel, tengo que separar las combinaciones de los f�rmacos antidiab�ticos y
#te pasare un Excel de c�digos y conductor diferente para que se confunda con el de epiPEUCAT. 
#Pero quiz�s tu lo puedes hacer mas f�cil en nivel de "R", 
#contando cada combinaci�n por separado, hare lo que tu me digas que es mas f�cil para ti..
#Gracias
#B
#################### 



# 02.02.2021    #

# eps els Pie diab�tico--> tiene las amputaciones!!!

#################

#https://www.fesemi.org/sites/default/files/documentos/ponencias/xii-congreso-somimaca/Dra.%20Gonzalez.pdf


#Hola Comento coses

#Ray: 
#  - No facis els p-valors, ni model logistic,
#abans jo faria l'analisis que correspongui als objectius de la investigaci� (Ho comentem), 
#adem�s s'han de crear les noves variables

#- Per tant si que cal generar les noves variables que comenta el Bogdan
#(Una vegada estiguin creades procedirem als analisis pertinents)

#Bogdan: 
#  - El tema de c�digos, ya te lo hemos comentado alguna vez, (Se que para ti te parece una chorrada) pero hay una reglas para que todo funcione:  
#  
#  * Los nombres de los agrupadores tienen que ser: Cortos, informativos , sin acentos, sin espacios, sin caracteres extra�os (+ / & % *  etc...). 
#  * En el campo descripci�n puedes poner lo que quieras
#  * No se trata de generar un agrupador nuevo por columna, sin� que en la misma columna poner el nombre del nuevo agrupador. 
#  * Si un c�digo corresponde a dos agrupadores distintos, entonces: O bien se crea una columna nueva, o bien se duplica ese c�digo
#  * Importante: Un agrupador de una lista de c�digos que incluye es concepto (p- ejem DM= CIM:E11-E14),  por lo tanto �s un OR. No un AND, el And se tiene que hacer a posteriori
#
#- La idea de este sistema es que el control de la creaci�n del agrupador (variable) lo tenga el investigador, y evitar fallos nuestros de sintaxis. 
#- Si , s� que podemos hacerlo nosotros , pero la idea es repartir responsabilidades, y minimizar fallos, ya que no somos cl�nicos. 
#- De todas maneras ahora lo arreglamos nosotros , te lo comento para futuros proyectos

#- Tema Manel 

#Ho hem de parlar

#Fins aviat

#Hola Jordi,

#Las nuevas  variables est�n dentro del Excel c�digos, 
#y se han hecho  de la misma manera como se ha hecho las otras variables, 
#si quieres cambio los nombres de agrupadores en mas peque�os, pero la idea es esta, 
#de re-agrupar algunas variables para se pueden sacara estas nuevas variables.

#Lo que vamos a publicar es esto, 
#un an�lisis bivariante con 2 grupos sin/con ulceras + modelo
#para ver lo que se relaciona con una nueva ulcera, 
#y creo que ahora es buen momento empezar con esta fase.



#L�stima esta idea de nueva �lcera y factores asociados no se pens� cuando se hizo el protocolo, 
#ya que se podr�a haber dise�ado para responder este objetivo, y no los que constan en el protocolo. 



#OK, el an�lisis bivariante encaja con el objetivo secundario:
#Conocer el perfil cl�nico de los pacientes con ulceras y pie diab�tico, 
#comorbilidades importantes (v�ase tabla 2)
#y medicaci�n concomitante en comparaci�n con el paciente sin complicaciones en extremidades inferiores.

#Conocer la prevalencia de las complicaciones micro-vasculares 
#(retinopat�a diab�tica, neuropat�a diab�tica, nefropat�a diab�tica)
#y macro-vasculares (cardiopat�a isqu�mica, arteriopat�a perif�rica y accidente cerebrovascular)
#en poblaci�n DM2 con UEIP


#- Conocer el perfil cl�nico (+  complicaciones micro-macro)
#de los pacientes con �lcera lo cubriria el descriptivo de este grupo (pacientes con UEIP). 

#El modelo log�stico se puede hacer pero tiene un problema,
#que es el alto riesgo de sesgo de reversibilidad, ya que no sabemos si la Ulcera es post o pre complicaci�n y/o Factor evaluado. ya que todo es prevalente. Para hacer-lo bien se tendria que haber dise�ado una cohorte, aunque con un periodo corto, seleccionando DM's libres de �lcera
#Jordi



#Modelo log�stico es extra pero se puede hacer con este dise�o, es un modelo explicativo nada mas.


#02.02.2021

#Gracias Ray, 

#Una cosita...salen solo las insulinas mixtas, 
#faltan el resto de insulinas
#y est�n en el excel de conductores, puedes comprobar por que no sale en el informe? 

#Gracias
#B
###################################################################################################
#FF.InAccInt           	F�rmacos Insulina acci�n intermedia	Insulin drugs intermediate action
#FF.InAccLenta         	F�rmacos Insulina acci�n lenta	Insulin drugs slow action
#FF.InAccRapida      	F�rmacos Insulina acci�n r�pida
#Insulin fast acting drugs
#FF.InMixta            	F�rmacos Insulina mixta	Drugs Insulin mixed
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
###   arteriopat�a neuropat�a y insuficiencia renal sobre los 6465
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

#S'ha fet aix�:
#################################################################################################################################
#PAS_PAD=case_when(  PAS.valor<90 & PAD.valor<60~ 1,
#                   (PAS.valor>=90 & PAD.valor>=60) & (PAS.valor<120 & PAD.valor<80) ~ 2, 
#                   (PAS.valor>=120 & PAD.valor>=80) & (PAS.valor<140 & PAD.valor<90) ~ 3,
#                    PAS.valor>=140 & PAD.valor>=90~ 4))
#################################################################################################################################
#MIRAR-HO DILLUNS!


############################################################################################################
###ii)   Arteriopatia perif�rica :[diagnos????co registrado o el valor de ITB (<0.9)] 499 (64.5%) 77
#OK!!!

############################################################################################################
###iii)   Nefropat�a Diabetica y/o diagn�stico de insuficiencia renal y/o proteinuria y/o [FG, FG<60 y/o CAC>30
#     1992 (50.3%)
#     3958
#OK!!

############################################################################################################
###iv)    Insuficiencia Renal Cr�nica:[seg�n valores de FG, FG<60 y/o CAC>30]
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
#hab�a c�digos en amputaciones repetidos, los he eliminado , est�n el la pesta�a eliminados, 
#..son c�digos de la misma fuente, mismos c�digos. He cambiado el nombre de agrupador es: AGR::
#AMPUTACIO_Ext_inferiorny la descripcion Amputacion extremidad inferior
#
#amputaciones==AMPUTACIO_Ext_inferior
#
#..tambien habia un peque�o error en agrupador de revascularizaciones, ahora el agrupador es:
#IQ_ART la descripcion es: Revascularizacion de miembros inferiores

#revascularizaciones==IQ_ART


#�Ya se puede actualizar el informe a ver qu� sale!
  
#Te envio el otro excel de manel entre hoy y ma�ana, 
#requiere m�s trabajo, hay que crear agrupadores que quiere Manel
#gracias



################
#[08.01.2021]
################

#dubte:

#Hola Ray,

#He revisado el ultimo informe de epiPEUCAT que me enviaste, 
#adjunto el PDF con los comentarios, lo que no entiendo en la tabla 2 Taula 00.Variables TOTALS.
#Ulcera/Pie Diab�tico(Primaria+Hospital).1 a�o antes hacia atr�s:

#Si es del ultimo a�o desde la fecha tall 31/12/2018, por que todav�a salen en el grupo " sin ulceras y pie diab�tico" 
#c�digos de : ulceras, charcot, osteomielitis, es que no deber�an salir,
#si alguien de este grupo tiene estos c�digos en los �ltimos 12 meses es  un  pacientes con ulcera/pie diab�tico.

#solucio::
#* per que aquestes son pr�vies!,poden ser m�s d'un any enrera!!!! ANTECEDENTES!!



#Estamos esperando c�digos de amputaciones, pero esto lo tenemos que solucionar antes
#Gracias
#B



#####################
#[22.12.2020] :17:35#
#####################
#
#
#Adjunto el Excel con los agrupadores para amputaciones y revascularizaciones. 
#Jordi tiene los datos, 
#con esto ya puedes seguir con el an�lisis de epiPEUCAT, 
#a ver que sale con estos datos. 
#Seguimos trabajando con una muestra de 10000 pacientes, 
#tener en cuenta por favor la ultima decisi�n para definir los 2 grupos:
#i) Taula 
#Ulcera/Pie Diab�tico(Primaria+Hospital) us  NO [Ulcera/Pie Diab�tico(Primaria+Hospital)] 
#La finestra de l'agregador �s 1 ANY anterior,(-365 dies)>


#Se tiene que crear una variable que son antecedentes de ulceras/pie diab�tico 
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
#hemos eliminado las osteomielitis de otras partes, con esto ya puedes hacer un nuevo análisis.
#
#Importante:
#  
#La ventana para pie diabético debe ser de un año previo a la fecha tall (31/12/2018--à365 dias )
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
#iv)  Agregacio_Anal�???tiques:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES  , [dia mes proxim]. 
#
#v)  Agregacio_Derivacions:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES.
#
#vi)  Agregacio_Cliniques:
#-a partir del dia Index: 31.12.2018, s'ha mirat enrera  365 DIES  , [dia mes proxim]. 
#
#Solo 2 grupos con ulcera/pie diabético 
#( primaria+hospitales) VS .sin ulcera/pie diabético (primaria+hospitales)
#
#Estamos esperando los codigos de amputaciones y 
#de procedimientos vasculares de SIDIAP asi que este periodo solo trabajaremos
#con la muestra de 10000 pacientes.
##############################################################################################



#Se trata de la definición de Pie diabético, y con ello deber�???amos cerrar el tema:
  
#Pie diabético :
#...es la destrucción de tejido en el pie de una paciente con DIABETES con neuropat�???a y/o arteriopat�???a. 
#Esta destrucción de tejido es habitualmente en forma de úlcera por debajo de tobillo; 
#por encima no se considera pie diabético,

#aunque puede ser una artropat�???a de Charcot también. 
#Por tanto, como hay un infraregistro de neuro y arteriopat�???a, 
#deberemos asumir lo siguiente:

###- Las úlceras en el pie en esta base se deben hacer equivaler a Pie diabético (aunque sea una limitación)
###- Los Charcot también se considera pie diabético, pero es importante tener el dato en la descripción
###- Los diagnósticos de Pie diabético sean en hospital o primaria debemos asumir que se han registrado correctamente
###- Una cosa es el análisis de todos los pacientes con algún registro que equivalga a pie diabético: 
###  será interesante saber cuántos tienen el registro en primaria y hospital, cuántos solo en primaria, y cuántos solo en el hospital. Esto será un descriptivo de los pacientes con Pie diabético para ver por qué grupos está cosntituido el grupo CON pie diabético.
###- Para la comparación con los que no tienen Pie diabético (la n es de 6166 según los datos que nos pasaste) hay que hacer un solo grupo CON pie diabético y hacer la comparación con los 6.166

#Adjunto el documento con instrucciones 
#y el Excel con el agrupador nuevo agr9 que incluye estas variables.
#Ojo, hay que vigilar excluir los duplicados, 
#la idea es crear un grupo tanto de primaria como de hospitales,
#que incluye las variables de pie diabético y de ulceras de miembro inferior + charcot,  
#y este grupo compararlo con el grupo sin pie y sin ulcera

#No hay que borrar lo anterior, si no añadir esta nueva variable y análisis al informe que tenemos.

#################################################################
#[[ PIE+Ulcera MI ]]-> pie diabètico+úlcera miembro inferior!!!]]
#################################################################
#params = list(dir_dades="../DADES/PREVAL_DM2/sidiap/mostra", year= year),


#dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
#----------------------------------------------------------------------------------------# 
#rmarkdown::render(input="./codi/1_lectura_epipeu.Rmd",
#                  output_file=paste0(here::here("outputs/Informe_Lectura_Final_DM2_MANEL_"),Sys.Date()),
#                  params = list(dir_dades=dir_dades_origen,bd.dindex='20181231'))
#----------------------------------------------------------------------------------------#
#rmarkdown::render(input="./codi/2_preparacio_epipeu.Rmd",
#                  output_file=paste0(here::here("outputs/Informe_Preparacio_Final_DM2_MANEL_"),Sys.Date()),
#                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
#rmarkdown::render(input="./codi/3_analisis_epipeu.Rmd",
#                  output_file=paste0(here::here("outputs/Informe_Exploratori_Final_DM2_MANEL_"),Sys.Date()),
#                  params = list(dir_dades=dir_dades_origen,bd.dindex='31.12.2018'))
#----------------------------------------------------------------------------------------#
#


#----------------------------------------------------------------------------------------#
library("dplyr")
rm(list=ls())
#dir_dades="dades/mostra"
#----------------------------------------------------------------------------------------#
dir_dades_origen="../../DADES/EPIPEU_CAT3/dades/mostra"
#----------------------------------------------------------------------------------------# 
rmarkdown::render(input="./codi/1_lectura_epipeu.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Lectura_Final_DM2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/2_preparacio_epipeu.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Preparacio_Final_DM2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/3_analisis_epipeu1.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Exploratori_Final1_DM2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#
rmarkdown::render(input="./codi/3_analisis_epipeu2.Rmd",
                  output_file=paste0(here::here("outputs/Informe_Exploratori_Final2_DM2_"),Sys.Date()),
                  params = list(dir_dades=dir_dades_origen))
#----------------------------------------------------------------------------------------#



