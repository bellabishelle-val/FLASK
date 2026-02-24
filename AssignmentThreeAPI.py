# Below is Question Two

from flask import *

import os

import pymysql

app = Flask(__name__)

app.config["UPLOAD_FOLDER"] = "static/images"

# below is the add products route
@app.route("/api/laptops", methods = ["POST"]) 
def laptops():
    if request.method == "POST":
        name = request.form["name"]
        brand = request.form["brand"]
        processor = request.form["processor"]
        ram = request.form["ram"]
        storage = request.form["storage"]
        screensize = request.form["screensize"]
        price = request.form["price"]
        stock = request.form["stock"]
        photo = request.files["photo"]

        filename = photo.filename

        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)

        # save the product photo image into the new location
        photo.save(photo_path)

        connection = pymysql.connect(host="localhost", user="root", password= "", database = "online")

        # create a cursor
        cursor = connection.cursor()

        # structure the sql query to insert the product details to the database
        sql = "INSERT INTO laptops(name, brand, processor, ram, storage, screensize, price, stock, photo) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s)"

        data = (name, brand, processor, ram, storage, screensize, price, stock, photo)

        cursor.execute(sql, data)

        connection.commit()


        return jsonify ({"message" : "Kamepach"})

app.run(debug=True)