from flask import Flask, jsonify
# from flask.views import View


app = Flask(__name__)


@app.route("/api/")
def hello_world():
    return jsonify(hello="World")


# class Health(View):
#     def get(self):
#         data = {"success": True, "message": "healthy"}
#         return jsonify(**data, status=200, mimetype='application/json')

# app.add_url_rule("/healthcheck", view_func=Health.as_view("health_check"))


@app.route("/healthcheck", strict_slashes=False)
def health_check():
    data = {"success": True, "message": "healthy"}
    return jsonify(**data, status=200, mimetype='application/json')
