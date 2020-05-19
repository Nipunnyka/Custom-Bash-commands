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