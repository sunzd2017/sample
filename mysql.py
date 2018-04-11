# -*- coding: utf-8 -*-
# from collections import namedtuple

from .lib import pymysql

########################################################################
#　概　要：MYSQLのCRUD処理を実施する
#　作成日：2018.01.30
#　作成者：DHC.孫志棟
########################################################################

class MySql(object):
    __dbUser = 'root'
    __dbPwd = '1234'
    __dbName = 'sys'
    __dbHost = '172.16.230.15'

    #-------------------------------------------------------------------
    # 概　要：　接続対象作成
    # 戻り値：　DB接続
    #-------------------------------------------------------------------
    def dbInit(self):
        conn = pymysql.connect(self.__dbHost, self.__dbUser,
            self.__dbPwd, self.__dbName, charset='utf8')
        return conn
