from flask import Flask

app = Flask(__name__)

@app.route("/prajwal")
def hello():
    return "Hello Prajwal, this is your SECOND microservice!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)
