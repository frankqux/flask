from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
  return "Hello Index"

@app.route('/world')
def world():
  return "Hello World"
