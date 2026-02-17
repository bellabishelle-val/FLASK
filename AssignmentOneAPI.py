from flask import *

app = Flask(__name__)


# create a route python code to postman with flask that is able to calculate the simple interest given the pricipal as 20000, rate as 7% and time as 8 years.

@app.route("/api/assignment", methods=["POST"])
def calculator():
    if request.method == "POST":
        principal = float(request.form["principal"])
        rate = float(request.form["rate"])
        time = float(request.form["time"])

        simple_interest = principal * (rate / 100) * time
       

        return jsonify({
            "principal": principal,
            "rate_percent": rate,
            "time_years": time,
            "simple_interest": simple_interest,
            
        })
    


app.run(debug=True)