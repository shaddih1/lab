# -*- coding: utf-8 -*-

# standar python library
import git
import subprocess
import os

# local Lab classes

def update():
    try:
        git = git.cmd.Git(git_dir)
        git.pull()
    except:
        output = subprocess.check_output(["git", "pull"])

def get_home_dir():
    home_dir = os.path.expanduser("~")

    return home_dir
