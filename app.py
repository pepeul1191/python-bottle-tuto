#!/usr/bin/env python
# -*- coding: utf-8 -*-

import bottle
from beaker.middleware import SessionMiddleware
from configs.session import session_options

app = bottle.app()
app_session = SessionMiddleware(app, session_options)

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
        app=app_session, 
        host='localhost', 
        port=3000, 
        debug=True,
        reloader=True
    )