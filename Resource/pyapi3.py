import requests
import json



def readfile_token():
    f = open("/Users/USER1/.jenkins/workspace/DGL/Resource/access_token.json", "r")
    global  access
    access = f.read()

def readfile_idlist():
    f = open("/Users/USER1/.jenkins/workspace/DGL/Resource/idlist.json", "r")
    global  idlist
    idlist = f.read()

readfile_idlist()
readfile_token()


url = "http://139.59.126.160/api/v1/oe/" + idlist

payload = ""
headers = {
    'x-access-token': access,
    'Content-Type': "application/x-www-form-urlencoded",
    'cache-control': "no-cache",
    'Postman-Token': "dc703b11-a910-421f-a56c-92f0d1217ada"
    }

response = requests.request("GET", url, data=payload, headers=headers)

with open('/Users/USER1/.jenkins/workspace/DGL/Resource/report.json', 'w') as outf:
    outf.write(response.content)

with open('/Users/USER1/.jenkins/workspace/DGL/Resource/report.json') as f:
    data = json.load(f)

    name = data['result']['company']['name']
    address_no = data['result']['company']['address']['no']
    address_room = data['result']['company']['address']['room']
    address_floorNo = data['result']['company']['address']['floorNo']
    address_building = data['result']['company']['address']['building']
    address_homeGroup = data['result']['company']['address']['homeGroup']
    address_soi = data['result']['company']['address']['soi']
    address_road = data['result']['company']['address']['road']
    address_subDistrict = data['result']['company']['address']['subDistrict']
    address_district = data['result']['company']['address']['district']
    address_province = data['result']['company']['address']['province']
    address_postcode = data['result']['company']['address']['postcode']
    taxIdentificationNumber = data['result']['company']['taxIdentificationNumber']
    receiptNo = data['result']['receiptNo']
    descriptionreport = data['result']['description']
    billNo = data['result']['billNo']
    billDate = data['result']['billDate']
    remark = data['result']['remark']
    paymentTotalTHBAHT = data['result']['paymentTotalTHBAHT']
    itemdescription = data['result']['transactions'][0]['description']
    unitPrice = data['result']['transactions'][0]['unitPrice']
    vatAmount = data['result']['transactions'][0]['vatAmount']
    discount = data['result']['transactions'][0]['discount']
    subTotalPriceVatExempt = data['result']['subTotalPriceVatExempt']
    subTotalPriceBeforeVat = data['result']['subTotalPriceBeforeVat']
    totalPrice = data['result']['transactions'][0]['totalPrice']
    transactionDate = data['result']['transactionDate']
