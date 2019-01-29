import requests
import json
from pprint import pprint

url = "http://139.59.126.160/api/v1/login/accountant/email"

payload = "{\r\n  \"email\": \"tester@gmail.com\",\r\n  \"password\": \"123123\"\r\n}"
headers = {
    'Content-Type': "application/json",
    'Authorization': "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RlckBnbWFpbC5jb20iLCJpZCI6IjViZTUwM2FiMDBiNTAwMzM2OGUzYzg3YyIsImNvbXBhbnlJZCI6IjViZTUwM2FiMDBiNTAwMzM2OGUzYzg3ZCIsImlhdCI6MTU0NTM4Mzc3MiwiZXhwIjoxNTQ1Mzk4MTcyfQ.R647MduTsttgfWxr2T-99jGB-gX9hVFyYAjZQVPDW50",
    'cache-control': "no-cache",
    'Postman-Token': "394bbfa3-001a-40b7-a13f-5b6a53cd65ec"
    }


response = requests.request("POST", url, data=payload, headers=headers)

data = response.json()
json = data['result']
success = json['access_token']

print   success 

with open('/Users/USER1/.jenkins/workspace/DGL/Resource/access_token.json', 'w') as outf:
    outf.write(success)





