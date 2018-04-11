import configparser
import os

def getConfig(section, key):
    config = configparser.ConfigParser()
    path = os.path.split(os.path.realpath(__file__))[0] + '/data.conf'
    config.read(path)
    return config.get(section, key)


def setConfig(section, key, value):
    config = configparser.ConfigParser()
    path = os.path.split(os.path.realpath(__file__))[0] + '/data.conf'
    config.read(path)
    config.set(section, key, value)
    with open(path, 'w') as fw:
        config.write(fw)