#!/usr/bin/env python
"""
Docstring
"""

import argparse
import logging
import pprint


# Functions that do things
def do_the_thing( x ):
    """
    pprints x!
    """
    pprint.pprint( x )

    #note, no return (returns None by default)


def get_parser():
    p = argparse.ArgumentParser(description="""
Example usage:
    ./program -v -d
""", formatter_class=argparse.RawTextHelpFormatter)
    p.add_argument('-d', dest='deployment_id', action='store', type=str, default='')
    p.add_argument('-v', dest='verbose', action='store_true')

    return p

def main():

    args = get_parser().parse_args()

    if args.verbose:
        log.init(level='DEBUG')

    # Do things
    do_the_thing( 'this is a string!' )
    dict_thing = {'a': 3, 'b': {'c': range(4)}}

    do_the_thing( dict_thing )

if __name__ == "__main__":
    main()
