# https://www.hackerrank.com/challenges/xml-1-find-the-score/problem

import sys
import xml.etree.ElementTree as etree
# Print number of attributes in xml

def get_attr_number(_tree):
    number_of_attributes = 0
    for elem in _tree.iter():
        number_of_attributes += len(elem.attrib)
    return number_of_attributes


if __name__ == '__main__':
    tree = etree.parse('test.xml')
#     root = tree.getroot()
    print(get_attr_number(tree))
