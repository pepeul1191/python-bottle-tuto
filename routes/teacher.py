#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
from bottle import Bottle, HTTPResponse, request
from configs.middlewares import headers
from helpers.teacher_list import teachers

app = Bottle()

@app.route('/list', method='GET')
@headers
# @session_false
def list():
    return HTTPResponse(
      status=200, 
      body=json.dumps(teachers)
    )

@app.route('/get/<id>', method='GET')
@headers
# @session_false
def get(id):
    id = int(id)
    return HTTPResponse(
      status=200, 
      body=json.dumps(teachers[id])
    )

@app.route('/search', method='GET')
@headers
# @session_false
def search():
    id = int(request.query.id)
    return HTTPResponse(
      status=200, 
      body=json.dumps(teachers[id])
    )