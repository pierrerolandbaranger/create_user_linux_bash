#!/bin/bash


#Ce script demandera à l'utilisateur son nom, et si aucun utilisateur de ce type n'existe, il créera un utilisateur

echo  "Pour creer un nouvel utilisateur, veuillez entrer un Nom( ex: bob ou Michelle)"

read username

getent passwd $username > /dev/null


   if [ $? -ne 0 ]; then

       for i in $username;

             do sudo useradd -m $i;

             echo "OK. Un compte a été créé pour $username."      
       done

   else  echo "Refusé. Un compte existe déjà pour $username"

   fi
