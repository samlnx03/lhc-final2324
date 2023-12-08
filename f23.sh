#!/bin/bash

dir="final"  # directorio para el escenario del examen 
this_file="final.txt"  #nombre de este archivo, para extraer scripts y examen
examen="examen.txt"	#archivo a generar con instrucciones para el alumno
#script para crear el escenario practico y archivo de examen
#ejecutar con ./4ejecuta-script-esc.sh <filename.sh>
#luego copiar este directorio en cada cuenta del alumno con 
# 	bash 5copiarEscenario.sh <dir> | sudo bash
#

mkdir $dir
cd $dir

#generar el examen en el directorio de trabajo
#desde este mismo archivo del directorio padre
grep ^#P ../$this_file | sed 's/^#P//g' > $examen

mkdir d01
mkdir d02; touch d02/a02.txt; touch d02/{b..d}{011..015}.{txt,png}
mkdir d03; mkdir d03/d031
mkdir d04; touch d04/{b..d}{011..015}.{txt,png,jpg}
mkdir d05; touch d05/{c..d}{011..014}.{txt,png,jpg}
mkdir d06;touch d06/info6.txt
mkdir d07;touch d07/a07.txt; mkdir d07/d07n
mkdir d08;touch d08/a08.txt;
mkdir -p d09/d09a; touch d09/d09a/a09.txt;
mkdir -p d10/d101 d10/d102; touch d10/d101/{c..d}{011..014}.{pdf,png,jpg}
mkdir d11; touch d11/{100..105}.xxx ; tar -czf d11/a11.tar.gz d11/*xxx; rm d11/*xxx
mkdir -p d12/d12d; touch d12/d12d/a{10..20}.{java,c}
mkdir -p d13;touch d13/a13.sh; chmod a-x d13/a13.sh
mkdir -p d14
mkdir d15
mkdir d16

