#!/usr/bin/python
'''
Testing the use cases of ConfigParser
'''

from ConfigParser import SafeConfigParser

config = SafeConfigParser(allow_no_value=True)
config.read('test.cfg')

print config.sections