# -*- coding: utf-8 -*-
import os
from . import mysql

mysqlObj = mysql.MySql()

def init():
    conn = None
    try:
        conn = mysqlObj.dbInit()
        fileNm = os.path.abspath('.') + "/sql/master.sql"
        cur = conn.cursor()
        with open(fileNm, "r", encoding="utf-8") as f:
            for each_line in f.readlines():
                if not each_line or each_line == "\n":
                    continue
                cur.execute(each_line)
        f.close()
        conn.commit()
    except Exception as exp:
        print(exp)
    if conn != None:
        conn.close()

def exc(fileNm, param = None):
    conn = None
    rlt = True
    try:
        conn = mysqlObj.dbInit()
        cur = conn.cursor()
        with open(fileNm, "r", encoding="utf-8") as f:
            for each_line in f.readlines():
                if not each_line or each_line == "\n":
                    continue
                cur.execute(each_line, param)
        f.close()
        conn.commit()
    except Exception as exp:
        rlt = False
        print(exp)
    if conn != None:
        conn.close()
    return rlt

def teardown():
    conn = None
    try:
        conn = mysqlObj.dbInit()
        fileNm = os.path.abspath('.') + "/sql/truncate.sql"
        cur = conn.cursor()
        with open(fileNm, "r", encoding="utf-8") as f:
            for each_line in f.readlines():
                if not each_line or each_line == "\n":
                    continue
                cur.execute(each_line)
        f.close()
        conn.commit()
    except Exception as exp:
        print(exp)
    if conn != None:
        conn.close()
