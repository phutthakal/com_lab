# app.py
from flask import Flask,render_template
# from pydantic import BaseModel
app = Flask(__name__)
# Sample data for demonstration
data = [
    {"name": "John", "nickname": "Johny", "age": 30, "free_time": "Reading books"},
    {"name": "Alice", "nickname": "Ali", "age": 25, "free_time": "Painting"},
    {"name": "Bob", "nickname": "Bobby", "age": 35, "free_time": "Playing guitar"},
    {"name": "Phutthakal","nickname":"Flook","age":22,"free_time": "Playing game"}
]

@app.route('/get')
def root():
    return render_template("index.html",data=data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0',port=5000 )
