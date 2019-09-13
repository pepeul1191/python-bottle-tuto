#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
from bottle import Bottle, HTTPResponse
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