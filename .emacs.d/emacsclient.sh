#!/bin/bash
/mnt/c/ProgramData/chocolatey/bin/emacsclient.exe $(echo $1|sed -e 's/\/mnt\/c/C\:/' -e 's/$//')
