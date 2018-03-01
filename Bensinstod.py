from bottle import *
import requests
import datetime
import os

response = requests.get('http://apis.is/petrol')

data =  response.json()

print(data['results'][0]['name'])

t = data['timestampPriceCheck']
t = datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S.%f')

bensin = data['results'][0]
for stod in data['results']:
    if stod['bensin95'] < bensin['bensin95']:
        bensin = stod

diesel = data['results'][0]
for stod in data['results']:
    if stod['diesel'] < diesel['diesel']:
        diesel = stod

@route('/')
def index():
    return template('index',data=data,bensin=bensin,diesel=diesel,t=t)


@route('/company/<n>')
def company(n):
    til = False
    for i in data['results']:
        if n == i['company']:
            til = True
            break
    if til == True:
        return template('company',data=data,nafn=n)
    else:
        return '<h1>Þessi síða er ekki til </h1>'


@route('/meira/<n>')
def meira(n):
    til = False
    for i in data['results']:
        if n == i['key']:
            til = True
            stod = i
            break
    if til == True:
        return template('meira',stod=stod)
    else:
        return '<h1>Þessi síða er ekki til </h1>'

@route('/static/<filename>')
def static_server(filename):
    return static_file(filename,root=('./static_files'))

@error(404)
def error404(error):
    return '<h1>Þessi síða er ekki til </h1>'

@error(500)
def error500(error):
    return '<h1>Þessi síða er ekki til </h1>'

run(host="0.0.0.0", port=os.environ.get('PORT'))