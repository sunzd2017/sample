# -*- coding: utf-8 -*-
import json
import os
from . import db
from . import modConfig
import datetime
print('start')
# 前回の更新日付
day = modConfig.getConfig("database", "day")
print('last update date:',day)
# 当日日付
date = (datetime.datetime.utcnow() + datetime.timedelta(hours=9)).strftime('%Y%m%d')
print('today:',date)
# DB更新
# rlt = db.exc(os.path.abspath('.') + "/sql/daily.sql", day)
# DB更新成功場合
# if rlt:
#     # 前回の更新日付に当日日付を更新する
#     modConfig.setConfig("database", "day", date)
print('end')
