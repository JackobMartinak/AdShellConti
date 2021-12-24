import subprocess
import sys

print("=============SHELL AD SCRIPT=============")


while(True):
    print("q - UKONCIT \nc - Priradenie prav uzivatelovi \n")
    command = input("Zadajte prikaz:")
    if(command == 'q'):
        break
    elif(command == 'c'):

        p = subprocess.Popen(["powershell.exe",
                              "./copypaste.ps1"],
                             stdout=sys.stdout)
        p.communicate()
    elif(command == 't'):
        p = subprocess.Popen(["powershell.exe",
                              "./test.ps1"],
                             stdout=sys.stdout)
        p.communicate()
