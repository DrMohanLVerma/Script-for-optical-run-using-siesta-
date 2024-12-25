#!/bin/bash

#======================================================#
# Script:for   opptical run                            #
# Author: Mohan L Verma, Computational Nanoionics      #  
# Research lab, Department of Applied Physics,         #
#   Shri Shanakaracharya Technical Campus-Junwani      # 
# Bhilai(Chhattisgarh)  INDIA                          #
# Sept 14  ver: 0.1   year: 2021                       #
#------------------------------------------------------#
# run this script using cammand                        #
#  sh mlv_script_optical_run                           #
# this will creat 10 folders with complete siesta run  #
# give feedback in                                     #
#                  www.drmlv.in/siesta  or             # 
#                  drmohanlv@gmail.com                 #
#===================================================== #
# modify the attached fdf file for your system and make #
#sure the corresponding  psf pseudopotential files in #
# the same folder.                                     #
#======================================================#
mkdir optical_along-x
mkdir optical_along-z
cp *.psf *.fdf ./optical_along-x
cp *.psf *.fdf ./optical_along-z
cd optical_along-x
mkdir optical-x
mpirun -np 6 siesta.exe optical_x.fdf | tee  result.out 
cp *.EPSIMG ./optical-x

cd ..

cd optical_along-z 
mkdir optical-z

mpirun -np 6 siesta.exe optical_z.fdf | tee  result.out 
cp *.EPSIMG ./optical-z

cd ..
