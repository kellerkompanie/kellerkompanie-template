#!/usr/bin/python
import re
import glob
import codecs
import os
import os.path
import zipfile


def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file))


template_directory = '..'
release_directory = 'release/'

if __name__ == '__main__':
    os.chdir(template_directory)

    filenames = glob.glob('kellerkompanie_zeus.*')
    filenames_count = len(filenames)
    print ('Found', filenames_count, 'files inside', template_directory)

    for filename in filenames:
        new_filename = release_directory + filename + ".zip"
        print (filename, '->', new_filename)

        zipf = zipfile.ZipFile(new_filename, 'w', zipfile.ZIP_DEFLATED)
        zipdir(filename, zipf)
        zipf.close()
