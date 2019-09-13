#!/usr/bin/env python
# -*- coding: utf-8 -*-

from routes.login import app as _login
from configs.middlewares import logs, headers

def register_routes(app):
    app.mount('/login', _login)
    # install middlewares
    app.install(logs)
    app.install(headers)
    return app