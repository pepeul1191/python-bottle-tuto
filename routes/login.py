#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template, request, redirect

app = Bottle()

@app.route('/', method='GET')
# @headers
# @session_false
def index():
    locals = {
        'message':'',
        'message_status':'',
    }
    return template(
        'templates/login/index', 
        locals=locals,
    )

@app.route('/', method='POST')
# @headers
# @session_false
def access():
    user_request = request.forms.get('user')
    pass_request = request.forms.get('pass')
    if user_request == 'ulima' and pass_request == 'ulima123':
        return redirect('/')
    else:
        s = request.environ.get('beaker.session')
        s['status'] = True
        s.save()
        locals = {
            'message':'Usuario y/o contraseña incorrectos',
            'message_status':'color-error',
        }
        return template(
            'templates/login/index', 
            locals=locals,
        )
