from flask import Flask
from flask import request

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, {ip}, your User-Agent is: {ua}</p>".format(ip=request.remote_addr, ua=request.headers.get('User-Agent'))

app.run(host='0.0.0.0', port=8080)