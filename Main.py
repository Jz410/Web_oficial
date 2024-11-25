from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def Home():
    NW:str = 'Home'
    return render_template('index.html', NW=NW)

@app.route('/codigoabierto')
def CodigoAbierto():
    NW:str = 'Código Abierto'
    return render_template('CodigoAbierto.html', NW=NW)

@app.route('/proyectos')
def Proyectos():
    NW:str = 'Proyectos'
    return render_template('Proyectos.html', NW=NW)

@app.route('/proyectosdepago')
def Pago():
    NW:str = 'Proyectos de pago'
    return render_template('ProyectosPago.html', NW=NW)

@app.route('/proximamente')
def Proximo():
    NW:str = 'Próximamente'
    return render_template('Proximamente.html', NW=NW)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')