# import the flask framework
from flask import *

#below we create a web server based application
app = Flask(__name__)

#below we create the home route.
#Routing: This is mapping/ connecting different resources to different functions. We do this by the help of a decorator
@app.route("/api/home")
def home():
    return jsonify({"message" : "Home Route Accessed"})

#below is the products route
@app.route("/api/products")
def products():
    return jsonify({"message" : "Welcome to the products route"})

#below is a route for addition calculation
@app.route("/api/calc", methods = ["POST"])
def calculator():
    if request.method == "POST":
        number1 = request.form["number1"]
        number2 = request.form["number2"]
        sum = int(number1) + int(number2)

        return jsonify({"the answer is ": sum})
    


    
#below we run the application


app.run(debug=True)
