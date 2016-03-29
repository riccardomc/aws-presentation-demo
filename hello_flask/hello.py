#!/usr/bin/env python

import requests
from flask import Flask, render_template
app = Flask(__name__)


@app.route('/hello/<name>')
def hello(name=None):
    r = requests.get("http://169.254.169.254/latest/meta-data/public-ipv4")
    return render_template('hello.html', name=name, ip=r.text)


@app.route('/')
@app.route('/howareyou')
def howareyou():
    return 'I am ok! Thanks!'


if __name__ == '__main__':
    app.run('0.0.0.0', port=5000, threaded=True)
