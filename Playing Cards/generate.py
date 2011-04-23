#!/usr/bin/env python
# encoding: utf-8
"""
generate.py

Created by Leon Coto on 2011-04-16.
Generates an XML plist with the playing-card info
"""

import sys
import os
import xml.etree.ElementTree as ET


figures = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
names = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine',
'Ten', 'Jack', 'Queen', 'King']

def main():
    
    plist = ET.Element('plist')
    plist.set('version', '1.0')
    card_dict = ET.SubElement(plist, 'array')
    
    def add_card(card_id, card_name, card_file):
        dict_el = ET.SubElement(card_dict, 'dict')
        
        card_file_key = ET.SubElement(dict_el, 'key')
        card_file_key.text = 'cardFile'
        card_file_string = ET.SubElement(dict_el, 'string')
        card_file_string.text = card_file
        
        card_name_key = ET.SubElement(dict_el, 'key')
        card_name_key.text = 'cardName'
        card_name_string = ET.SubElement(dict_el, 'string')
        card_name_string.text = card_name
    
    # I don't have these cards yet :(
    # add_card('jk1', 'Joker', 'jk1.png')
    # add_card('jk2', 'Joker', 'jk2.png')
    # add_card('back', 'Back', 'back.png')
    
    for figure in figures:
        for card_number in range(0, 13):
            
            prefix = figure[0].lower()
            name = names[card_number]
            
            card_id = '%s%d'%(prefix, card_number)
            card_name = '%s of %s'%(name, figure)
            card_file = '%s%02d.png'%(prefix, card_number + 1)
            
            add_card(card_id, card_name, card_file)
    

    tree = ET.ElementTree(plist)
    tree.write('cards.plist', 'UTF-8')

if __name__ == '__main__':
    main()

