#!/usr/bin/python3
#
# Paul Evans (10evans@cua.edu)
# 28 May 2020
#  4 May 2015
#
import re
import sys
# http://snowball.tartarus.org/otherapps/schinke/intro.html
ignore = ['atque', 'quoque', 'neque', 'itaque', 'absque', 'apsque',
    'abusque', 'adaeque', 'adusque', 'denique', 'deque', 'susque',
    'oblique', 'peraeque', 'plenisque', 'quandoque', 'quisque',
    'quaeque', 'cuiusque', 'cuique', 'quemque', 'quamque', 'quaque',
    'quique', 'quorumque', 'quarumque', 'quibusque', 'quosque',
    'quasque', 'quotusquisque', 'quousque', 'ubique', 'undique',
    'usque', 'uterque', 'utique', 'utroque', 'utribique', 'torque',
    'coque', 'concoque', 'contorque', 'detorque', 'decoque',
    'excoque', 'extorque', 'obtorque', 'optorque', 'retorque',
    'recoque', 'attorque', 'incoque', 'intorque', 'praetorque',
    'que']
# false positives in case statements, 1st-, and 2nd-recension dicta
false = ['cumque', 'eque', 'namque', 'pleraque', 'plerique',
    'plerisque', 'plerumque', 'quinque', 'unamquamque', 'unaqueque',
    'unicuique', 'uniuscuiusque', 'unumquemque', 'unusquisque',
    'usquequaque', 'utramque', 'utraque', 'utrique', 'utrisque',
    'utriusque', 'utrumque']
def main():
    string = sys.stdin.read()
    words = re.split('\W', string)
    for word in words:
        cumque = re.match(r'(\w+)cu[mn]que(?:\b)', word)
        que = re.match(r'(\w+)que(?:\b)', word)
        if que:
            if word.lower() not in ignore:
                if not cumque:
                    if word.lower() not in false:
                        print(que.group(1) + ' ' + 'xque')
                    else:
                        if word:
                            print(word)
                else:
                    if word:
                        print(word)
            else:
                if word:
                    print(word)
        else:
            if word:
                print(word)

if __name__ == '__main__':
    main()
