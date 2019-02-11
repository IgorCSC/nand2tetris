import argparse

myParser = argparse.ArgumentParser(description='numbers')

myParser.add_argument('--FN', metavar='FN', nargs='?', help='Takes a string with the path to the ASM file that is going to be assembled')

userInput = myParser.parse_args()


fileName = vars(oi)['FN']


