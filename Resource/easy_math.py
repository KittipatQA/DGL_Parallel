import operator as op
import locale

locale.setlocale( locale.LC_ALL, '' )

def calculate(number1, number2, operation):
    arithmetic_function = { '+': op.add, '-': op.sub, '*': op.mul, '/': op.div }
    return arithmetic_function[operation](number1, number2)

def convert_cur(value_input):
    convert = locale.currency( value_input, grouping=True )
    return convert.replace('$','')
