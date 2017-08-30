#!/usr/bin/python
import os
import glob
from shutil import copy2, copystat, Error, ignore_patterns

template_directory = '..'
source_directory = 'kellerkompanie_zeus.VR'
exclusion_list = ['mission.sqm']


def copytree_multi(src, dst, symlinks=False, ignore=None):
    names = os.listdir(src)
    if ignore is not None:
        ignored_names = ignore(src, names)
    else:
        ignored_names = set()

    # -------- E D I T --------
    # os.path.isdir(dst)
    if not os.path.isdir(dst):
        os.makedirs(dst)
    # -------- E D I T --------

    errors = []
    for name in names:
        if name in ignored_names:
            continue
        srcname = os.path.join(src, name)
        dstname = os.path.join(dst, name)
        try:
            if symlinks and os.path.islink(srcname):
                linkto = os.readlink(srcname)
                os.symlink(linkto, dstname)
            elif os.path.isdir(srcname):
                copytree_multi(srcname, dstname, symlinks, ignore)
            else:
                copy2(srcname, dstname)
        except (IOError, os.error) as why:
            errors.append((srcname, dstname, str(why)))
        except Error as err:
            errors.extend(err.args[0])
    try:
        copystat(src, dst)
    except WindowsError:
        pass
    except OSError as why:
        errors.extend((src, dst, str(why)))
    if errors:
        raise Error(errors)


def to_ignore(src, names):
    ignoring = []
    for name in names:
        if name.endswith('mission.sqm'):
            ignoring.append(name)
    return ignoring


if __name__ == '__main__':
    os.chdir(template_directory)

    filenames = glob.glob('kellerkompanie_zeus.*')
    filenames_count = len(filenames)
    print 'Found', filenames_count, 'files inside', template_directory

    for filename in filenames:
        if filename == source_directory:
            continue

        src = source_directory
        dst = filename
        print src, '->', dst

        copytree_multi(src, dst, ignore=to_ignore)
        # print filename
