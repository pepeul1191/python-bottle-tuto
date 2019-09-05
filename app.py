import bottle

app = bottle.app()

@app.route('/', method='GET')
def index():
    return 'Hola mundo!'

@app.route('/:filename#.*#')
def send_static(filename):
    return bottle.static_file(
        filename, 
        root='./static/'
    )

if __name__ == '__main__':
    bottle.run(
        app=app, 
        host='localhost', 
        port=3000, 
        debug=True,
        reloader=True
    )