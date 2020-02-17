#!/bin/sh
/mnt/c/ProgramData/chocolatey/bin/emacsclient.exe $(echo $1|sed 's/\/mnt\/c/C\:/') 
