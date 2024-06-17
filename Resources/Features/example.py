import os
from os import listdir

dirFiles = "C:\\Users\\jubatist\\PycharmProjects\\Tracks\\Results\\"
for file_name in listdir(dirFiles):
    if file_name.endswith('.png') or file_name.endswith('.html') or file_name.endswith('.xml'):
        os.remove(dirFiles + file_name)
