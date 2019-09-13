#!/usr/bin/env python
# -*- coding: utf-8 -*-

from functools import wraps
from bottle import request, response

def logs(fn):
    @wraps(fn)
    def _logs(*args, **kwargs):
        body = fn(*args, **kwargs)
        print(
            request.method
            + ' -> '
            + request.fullpath + ' '
            + str(response.status)
        )
        return body
    return _logs

def headers(fn):
    # @wraps(fn)
    def _headers(*args, **kwargs):
        body = fn(*args, **kwargs)
        response.headers['server'] = 'Ubuntu; CherryPy\\8.9.1;'
        return body
    return _headers
