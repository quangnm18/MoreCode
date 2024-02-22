from flask import Blueprint, request, send_file
from flask.wrappers import Response
from flask_cors import CORS
from flask_cors.decorator import cross_origin
import json
from businesses.blimport import BLImport
from businesses.bltest import BLTest

import_controller = Blueprint("import_controller", __name__)
cors = CORS(import_controller, resources={r"/*": {"origins": "*"}})

@import_controller.route("/test", methods=['GET'])
@cross_origin()
def test():
    oBL = BLTest()
    result = oBL.test()
    result = json.dumps(result, ensure_ascii=False)
    return Response(response=result, status=200, mimetype="application/json")

@import_controller.route("/import/template", methods=['GET'])
@cross_origin()
def get_file():
    _json = request.args
    catalog = int(_json.get("catalog"))
    filename = ""
    if catalog == 1:
        filename = "../template/import_medicine_template.xlsx"
    try:
        return send_file(filename)
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json") 

@import_controller.route("/import/preview", methods=['POST'])
@cross_origin()
def preview():
    _json = request.args
    sheetName = _json.get("sheetName")
    header = int(_json.get("header"))
    catalog = int(_json.get("catalog"))
    file = request.files['file']
    
    bl = BLImport()
    bl.catalog = catalog
    try:
        result = bl.preview_data(file, sheetName, header)
        result = json.dumps(result, ensure_ascii=False)
        return Response(response=result, status=200, mimetype="application/json")
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json")
    

@import_controller.route("/import/validate", methods=['POST'])
@cross_origin()
def vaidate():
    _json = request.args
    sheetName = _json.get("sheetName")
    header = int(_json.get("header"))
    catalog = int(_json.get("catalog"))
    file = request.files['file']
    
    bl = BLImport()
    bl.catalog = catalog
    try:
        result = {"valid": True}
        result["valid"] = bl.validate_data(file, sheetName, header)
        result = json.dumps(result, ensure_ascii=False)
        return Response(response=result, status=200, mimetype="application/json")
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json") 
    

@import_controller.route("/import/download/validate", methods=['POST'])
@cross_origin()
def download_file_validate():
    _json = request.args
    sheetName = _json.get("sheetName")
    header = int(_json.get("header"))
    catalog = int(_json.get("catalog"))
    file = request.files['file']
    
    bl = BLImport()
    bl.catalog = catalog
    try:
        file_name = bl.download_file_validate(file, sheetName, header)
        file_name = "../" + file_name
        return send_file(file_name)
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json") 


@import_controller.route("/import/save", methods=['POST'])
@cross_origin()
def save():
    _json = request.args
    sheetName = _json.get("sheetName")
    header = int(_json.get("header"))
    catalog = int(_json.get("catalog"))
    file = request.files['file']
    
    bl = BLImport()
    bl.catalog = catalog
    try:
        result = {"success": True, "valid": 0, "total": 0}
        (valid, total) = bl.import_data(file, sheetName, header)
        result["valid"] = valid
        result["total"] = total
        result = json.dumps(result, ensure_ascii=False)
        return Response(response=result, status=200, mimetype="application/json")
    except Exception as e:
        return Response(response=getattr(e, 'message', repr(e)), status=500, mimetype="application/json")  
    
