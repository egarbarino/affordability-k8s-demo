from flask import Flask
from flask import request
import os
import socket
from sys import exit
from multiprocessing import Value

app = Flask(__name__)
counter = Value('i', 0)
with open('index.html', 'r') as myfile:
  template = myfile.read()

@app.route("/")
def hello():
    with counter.get_lock():
            counter.value += 1

    html = "Affordability Calculator V1.0 | Host: " 
    html = html + socket.gethostname()
    html = html + " | Hits: "
    html = html + str (counter.value) 
    html = html + "\n"
    return template.replace("<!--info-->",html);

@app.route("/crash")
def crash():
    shutdown_server()
    return 'Crashing node ' + socket.gethostname() + '\n'


def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=80)


