from flask import Flask, jsonify


app = Flask(__name__)


@app.route("/generate/")
def hello_world():
    return jsonify(hi="Sopi")
