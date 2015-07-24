from flask import Flask
import os
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Device ID: ' + os.environ['RESIN_DEVCICE_UUID']

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=8080, debug='true')