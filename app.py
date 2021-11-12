
   
from flask import Flask

app = Flask(__name__)


@app.route('/')
def home():
    html = '''<h1>Hello World</h1>
    <h3>Capstone Project</h3>'''
    return html.format(format)


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=80)