#! /usr/bin/env python3
import os, getpass, platform
def askInput():
    return input('?CMD$ >>>  ')
def commands(cmd):
    try:
        print(eval(cmd))
    except:
        pass
    if cmd == "os user":
        print(getpass.getuser())
    elif cmd == "read file":
        file = input("FILES?file>>> ")
        try:
            f = open(file.strip(), "r")
            print(f.read())
        except:
            print("ERROR")
    elif cmd == "open file":
        file = input("FILES?file>>> ")
        os.system('open {}'.format(file))
    elif cmd == "os info":
        print(platform.platform())
    elif cmd == "system":
        print(platform.system())
    elif cmd == "release":
        print(platform.release())
    elif cmd == "version":
        print(platform.version())
    elif cmd == 'exit':
        quit()
print("OSC")
prev = []
while True:
    cmd= askInput()
    prev.append(cmd)
    try:
        print(eval(cmd))
        continue 
    except:
        pass
    if cmd == "os user":
        print(getpass.getuser())
    elif cmd == "read file":
        file = input("FILES?file>>> ")
        try:
            f = open(file.strip(), "r")
            print(f.read())
        except:
            print("ERROR")
    elif cmd == "open file":
        file = input("FILES?file>>> ")
        os.system('open {}'.format(file))
    elif cmd == "os info":
        print(platform.platform())
    elif cmd == "system":
        print(platform.system())
    elif cmd == "release":
        print(platform.release())
    elif cmd == "version":
        print(platform.version())
    elif cmd == 'exit':
        quit()
    elif cmd == 'previous cmd':
        previous = int(input('previous?CMD>>> '))
        try:
            commands(prev[-(previous +1)])
        except:
            print("ERROR")
