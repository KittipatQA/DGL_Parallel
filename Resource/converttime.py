import timestring
from datetime import datetime

def convert_data_time(date_input):
    test = timestring.Date(date_input)
    test_str = str(test)
    dt_str = datetime.strptime(test_str, '%Y-%m-%d %H:%M:%S')
    dt_str2 = datetime.strftime(dt_str, '%d/%m/%Y')
    print(dt_str2)
    return dt_str2


# convert_time('2019-01-02T05:00:00.000Zs')
