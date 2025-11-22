from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to Docker Flask App 2!"

@app.route('/prajwal')
def prajwal():
    return "Hello from /prajwal route!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)

