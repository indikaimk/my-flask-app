from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>This is a conatinerized Flask app 1</p>"

if __name__ == "__main__":
    app.run()
