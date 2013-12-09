# vi: set ft=python sts=4 ts=4 sw=4 et:

import os
import re

def read_hoststab(hoststab_file):
    try:
        info = open(hoststab_file).readlines()
        info = [line.strip() for line in info]
        info = [line.split() for line in info
                if not re.match(r'#', line) and line]
        return info
    except:
        print "Can not read file " + hoststab_file
        raise
