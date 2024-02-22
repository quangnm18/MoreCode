from flask import Flask
from .importcontroller import import_controller
from .invoicecontroller import invoice_controller

def create_app():
    app = Flask(__name__)
    app.register_blueprint(import_controller)
    app.register_blueprint(invoice_controller)
    return app