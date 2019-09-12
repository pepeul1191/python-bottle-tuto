#!/usr/bin/env python
# -*- coding: utf-8 -*-

from bottle import Bottle, request, template, HTTPResponse, redirect

app = Bottle()

@app.route('/', method='GET')
# @headers
# @session_false
def index():
  return 'login' # template('templates/login/index', locals = locals, helpers = helpers)
