#!/usr/bin/env python
# -*- coding: utf-8 -*-

import bottle
from bottle import request
from beaker.middleware import SessionMiddleware
from configs.session import session_options
from configs.middlewares import logs, headers
from configs.bootstrap import register_routes

app = bottle.app()
# install middlewares
# app.install(logs)
# app.install(headers)

@app.route('/', method='GET')
def index():
    s = request.environ.get('beaker.session')
    print('1 +++++++++++++++++++++++++++++++++')
    print(s)
    print('2 +++++++++++++++++++++++++++++++++')
    if s['status'] == True:
        message = 'Ud está logeado'
    else:
        message = 'Hola mundo!'
    return message

@app.route('/:filename#.*#')
def send_static(filename):
    return bottle.static_file(
        filename, 
        root='./static/'
    )

if __name__ == '__main__':
    # enable session
    app_session = SessionMiddleware(
        register_routes(app), 
        session_options
    )
    bottle.run(
        app=app_session, 
        host='localhost', 
        port=3000, 
        debug=True,
        reloader=True,
        # server='cherrypy'
    )