from flask import Blueprint, request, make_response
from flask.wrappers import Response
from flask_cors import CORS
from flask_cors.decorator import cross_origin
import json
from businesses.blinvoice import BLInvoice

invoice_controller = Blueprint("invoice_controller", __name__)
cors = CORS(invoice_controller, resources={r"/*": {"origins": "*"}})

@invoice_controller.route("/invoice", methods=['GET'])
@cross_origin()
def get_file():
    _json = request.args
    id = _json.get("id")
    bl = BLInvoice()
    
    try:
        pdf = bl.get_invoice_pdf(id)
        response = make_response(pdf)
        response.headers['Content-type'] = "application/pdf"
        response.headers['Content-Disposition'] = 'inline; filename=contract.pdf'
        return response
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json") 
