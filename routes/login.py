#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, template

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
