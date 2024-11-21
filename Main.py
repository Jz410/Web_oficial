from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def Home():
    NW:str = 'Home'
    return render_template('index.html', NW=NW)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')