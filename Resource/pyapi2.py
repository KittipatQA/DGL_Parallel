import requests
import json

def readfile():
    f = open("/Users/USER1/.jenkins/workspace/DGL/Resource/access_token.json", "r")
    global  access
    access = f.read()

url = "http://139.59.126.160/api/v1/oe"

querystring = {"page":"1","limit":"10","status":["paid","outstanding","void"]}

payload = ""

readfile()

headers = {
    'x-access-token': access,
    'cache-control': "no-cache",
    'Postman-Token': "2b69b00b-956e-4c1c-bd1a-6171afd2fa3c"
    }

response = requests.request("GET", url, data=payload, headers=headers, params=querystring)

data = response.json()
print response.status_code
json = data['result']['info']
print json
getid = json[0]['_id']

print   getid 

with open('/Users/USER1/.jenkins/workspace/DGL/Resource/idlist.json', 'w') as outf:
    outf.write(getid)