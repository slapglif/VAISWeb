from flask import Flask
from flask import render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///VegaWeb.db'
db = SQLAlchemy(app)


@app.route('/')
def index():
    output = render_template('index.html')
    return output


app.run(debug=True,host='0.0.0.0',port=1900,threaded=True)

