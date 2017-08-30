#!/usr/bin/python
import os
import glob
import subprocess
from shutil import move


template_directory = '..'
release_directory = 'release'
filebank_exe = 'FileBank.exe'


if __name__ == '__main__':
    os.chdir(template_directory)

    filenames = glob.glob('kellerkompanie_zeus.*')
    filenames_count = len(filenames)
    print 'Found', filenames_count, 'files inside', template_directory

    for filename in filenames:
        #print filename
        new_filename = release_directory + filename + ".pbo"
        #print '->', new_filename

        #print filebank_exe, '"' + os.path.abspath(filename) + '"'
        #subprocess.check_call([filebank_exe, '"' + os.path.abspath(filename) + '"'])
        #command = './d/SteamLibrary/steamapps/common/Arma\ 3\ Tools/FileBank/FileBank.exe -dst ../' + release_directory + ' ../' + filename
        release_abs = os.path.abspath("../release").replace(" ", "\ ")
        filename_abs = os.path.abspath(filename).replace(" ", "\ ")
        command = '/d/SteamLibrary/steamapps/common/Arma\ 3\ Tools/FileBank/FileBank.exe -dst '  + release_abs + " source " + filename_abs
              
        print command
        subprocess.call(command, shell=True)
