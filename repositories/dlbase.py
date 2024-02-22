import mysql.connector
from mysql.connector import Error
from pymysql import NULL
import json
import os
from dotenv import load_dotenv

load_dotenv()

class DLBase:

    config = {}
    conn = None
    dbMongo = None
    def __init__(self) -> None:
        self.config = {
            'user': os.environ.get("USER"),
            'password': os.environ.get("PASSWORD"),
            'host': os.environ.get("HOST"),
            'database': os.environ.get("DATABASE"),
            'port' : os.environ.get("PORT"),
            'raise_on_warnings': True
        }
        self.conn = mysql.connector.connect(**self.config)
        
    def query_command(self, query, param):
        try:
            cursor = self.conn.cursor(dictionary=True)
            cursor.execute(query, param)
            records = cursor.fetchall()
            return records
        except Error as e:
            return {
                "Success": False
            }
        finally:
            cursor.close()
    
    def excute_command(self, sql, param):
        try:
            cursor = self.conn.cursor(dictionary=True)
            cursor.execute(sql, param)
            self.conn.commit()
        except Error as e:
            return {
                "Success": False
            }
        finally:
            cursor.close()
            
    def excute_command_many(self, sql, param):
        try:
            cursor = self.conn.cursor(dictionary=True)
            cursor.executemany(sql, param)
            self.conn.commit()
        except Error as e:
            return {
                "Success": False
            }
        finally:
            cursor.close()
        
    def query_procedure(self, proc_name, param):
        try:
            cursor = self.conn.cursor()
            cursor.callproc(proc_name, param)
            records = cursor.fetchall()
            return records
        except Error as e:
            return {
                "Success": False
            }
        finally:
            cursor.close()
        
    def excute_procedure(self, proc_name, param):
        try:
            cursor = self.conn.cursor()
            cursor.callproc(proc_name, param)
            self.conn.commit()
        except Error as e:
            return {
                "Success": False
            }
        finally:
            cursor.close()
    