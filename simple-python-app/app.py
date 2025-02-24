from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Md Aabid Hussainn'

if __name__ == '__main__':
    app.run()

