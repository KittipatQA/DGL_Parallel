#!/usr/local/bin/python
# -*- coding: utf-8 -*-

import requests


url = 'https://notify-api.line.me/api/notify'
token = 'GnCxrDqSZqoeO4E1DRNkqLDqrYtCVN4RrYZBDDZXO6U'
headers = {'content-type':'application/x-www-form-urlencoded','Authorization':'Bearer '+token}
read = open("data.txt", "r") 
msg = read.readlines()
r = requests.post(url, headers=headers , data = {'message':msg})
print r.text


