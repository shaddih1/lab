# -*- coding: utf-8 -*-

class LabTools:

    def __init__(self):
        self.tools = {
            "1" : self.me,
            "2" : self.use
        }

    def start(self, tool):
        while True:
            action = self.tools.get(tool.lower())

            if action:
                action()
            else:
                print("Error")
                break

    def me(self):
        print("MEEE")

    def use(self):
        print("MEEEERRR")
