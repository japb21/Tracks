import os
from os import listdir

def validateElement(parameter):
    myList = ["Home", "News", "Manual", "Downloads","Contribute","Screenshots","Clients","Search"]
    if parameter in myList:
        return True
    else:
        return False

def DeleteOldLogFiles(fileDir):
    for file_name in listdir(fileDir):
        if file_name.endswith('.png') or file_name.endswith('.html'):
            os.remove(fileDir + file_name)
