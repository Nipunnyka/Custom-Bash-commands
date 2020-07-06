#!/bin/bash
function runflu(){
    source /home/nipunika/.bash_profile 
    flutter doctor
}

function gitupdate(){
    git add .
    read -p "enter the commit message: " msg
    git commit -m "$msg"
}

function build_icons(){
    flutter pub get
    flutter pub pub run flutter_launcher_icons:main
}

function set_origin(){
    read -p "enter the url of new remote origin: " newurl
    git remote set-url origin $newurl
}

function hask_new_proj(){
    read -p "enter the name of the project file": filename
    stack new $filename
    cd $filename
    stack setup
    stack build
    stack exec $filename-exe
}