from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>This is a Flask app that build automatically  with GitHub actions. Let's run it on Kubernetes. </p>"
