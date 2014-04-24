#! /usr/bin/python
#
# Hollywood Hacking Heuristics
#   Create useless "hacking" phrases.

import random

adjectives = ['forwarding', 'polymorphic', 'reverse', 'secure']
verbs = ['backtrace', 'exploit', 'hack', 'inject', 'migrate', 'pentest', 'ping', 'query', 'sniff', 'spoof', 'trace']
nouns = ['DNS', 'IP', 'IRC', 'RAID', 'RSS', 'TCP', 'UDP', 'XSS', 'bandwidth', 'cookies', 'database', 'dual core',
'mainframe', 'ping', 'proxy', 'query', 'router', 'server', 'shell', 'trace']
pronouns = ["his", "their", "the"]

random.seed()

def verb():
        return random.choice(verbs)

def noun():
        if (random.randint(1,4) == 1):
                return random.choice(adjectives) + " " + noun()
        return random.choice(nouns)

def pronoun():
        return random.choice(pronouns)

patterns = ["%s %s %s to %s %s %s." % (verb().capitalize(), pronoun(), noun(), verb(), pronoun(), noun()),
            "In order to %s %s %s you have to %s the %s and then %s the %s." % (verb(), pronoun(), noun(), verb(), noun(), verb(), noun()),
            "First %s %s %s then %s %s %s, but mind the %s." % (verb(), pronoun(), noun(), verb(), pronoun(), noun(), noun())]

print(random.choice(patterns))

