# -*- coding: utf-8 -*-

# standar python library
import git
import subprocess

def update():
    try:
        git = git.cmd.Git(git_dir)
        git.pull()
    except:
        output = subprocess.check_output(["git", "pull"])
