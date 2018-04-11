UPDATE DAILY_WORKER_SHIFT_SCHEDULE set SHIFT_DATE = DATE_FORMAT(date_add(NOW(), INTERVAL 1 day),'%%Y%%m%%d') where DAILY_SHIFT_SCHEDULE_ID > 00000000 and SHIFT_DATE = DATE_FORMAT(date_add(%s, INTERVAL 1 day),'%%Y%%m%%d');

UPDATE DAILY_WORKER_SHIFT_SCHEDULE set SHIFT_DATE = DATE_FORMAT(NOW(),'%%Y%%m%%d') where DAILY_SHIFT_SCHEDULE_ID > 00000000 and SHIFT_DATE = DATE_FORMAT(%s,'%%Y%%m%%d');

UPDATE DAILY_WORKER_SHIFT_SCHEDULE set SHIFT_DATE = DATE_FORMAT(date_sub(NOW(), INTERVAL 1 day),'%%Y%%m%%d') where DAILY_SHIFT_SCHEDULE_ID > 00000000 and SHIFT_DATE = DATE_FORMAT(date_sub(%s, INTERVAL 1 day),'%%Y%%m%%d');


update TASK set PLAN_START_DATE_TIME = concat(DATE_FORMAT(date_add(NOW(), INTERVAL 1 day),'%%Y%%m%%d'),substr(PLAN_START_DATE_TIME,9,4)), PLAN_END_DATE_TIME = concat(DATE_FORMAT(date_add(NOW(), INTERVAL 1 day),'%%Y%%m%%d'),substr(PLAN_END_DATE_TIME,9,4)), TASK_DATE = DATE_FORMAT(date_add(NOW(), INTERVAL 1 day),'%%Y%%m%%d') where TASK_ID > 00000000 and TASK_DATE = DATE_FORMAT(date_add(%s, INTERVAL 1 day),'%%Y%%m%%d');


update TASK set PLAN_START_DATE_TIME = concat(DATE_FORMAT(NOW(),'%%Y%%m%%d'),substr(PLAN_START_DATE_TIME,9,4)), PLAN_END_DATE_TIME = concat(DATE_FORMAT(NOW(),'%%Y%%m%%d'),substr(PLAN_END_DATE_TIME,9,4)), TASK_DATE = DATE_FORMAT(NOW(),'%%Y%%m%%d') where TASK_ID > 00000000 and TASK_DATE = DATE_FORMAT(%s,'%%Y%%m%%d');

update TASK set PLAN_START_DATE_TIME = concat(DATE_FORMAT(date_sub(NOW(), INTERVAL 1 day),'%%Y%%m%%d'),substr(PLAN_START_DATE_TIME,9,4)), PLAN_END_DATE_TIME = concat(DATE_FORMAT(date_sub(NOW(), INTERVAL 1 day),'%%Y%%m%%d'),substr(PLAN_END_DATE_TIME,9,4)), TASK_DATE = DATE_FORMAT(date_sub(NOW(), INTERVAL 1 day),'%%Y%%m%%d') where TASK_ID > 00000000 and TASK_DATE = DATE_FORMAT(date_sub(%s, INTERVAL 1 day),'%%Y%%m%%d');


update HANDOVER SET DATE = DATE_FORMAT(date_add(NOW(), INTERVAL 1 day),'%%Y%%m%%d') WHERE  HANDOVER_ID > 00000000 and DATE = DATE_FORMAT(date_add(%s, INTERVAL 1 day),'%%Y%%m%%d');

update HANDOVER SET DATE = DATE_FORMAT(NOW(),'%%Y%%m%%d') WHERE  HANDOVER_ID > 00000000 and DATE = DATE_FORMAT(%s,'%%Y%%m%%d');

update HANDOVER SET DATE = DATE_FORMAT(date_sub(NOW(), INTERVAL 1 day),'%%Y%%m%%d') WHERE  HANDOVER_ID > 00000000 and DATE = DATE_FORMAT(date_sub(%s, INTERVAL 1 day),'%%Y%%m%%d');

