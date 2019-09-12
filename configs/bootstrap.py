#!/usr/bin/env python
# -*- coding: utf-8 -*-

from routes.login import app as _login

def register_routes(app):
    app.mount('/login', _login)
    return app