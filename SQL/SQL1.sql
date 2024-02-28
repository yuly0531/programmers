 SELECT a.STU_ID "stu_id",
       c.CLASS_ID "class_id",
       c.CLASS_NAME "class_name",
       t.tea_name "tea_name",
       --to_char(ATTEND_DATE,'yyyy-mm-dd') "attend_date",
       to_char(c.CLASS_START_DATE,'yyyy-mm-dd')  "class_start_date",
       to_char(c.CLASS_END_DATE,'yyyy-mm-dd') "class_end_date",
       to_char(sysdate,'yyyy-mm-dd') "today",
       ROUND(c.CLASS_END_DATE-sysdate) "remainday",
       ROUND(c.CLASS_END_DATE-c.CLASS_START_DATE) "totalday",
       ROUND((c.CLASS_END_DATE - c.CLASS_START_DATE - SUM(CASE
           WHEN a.ATTEND_STATUS = '결석' THEN 1
           WHEN a.ATTEND_STATUS IN ('지각', '조퇴') THEN 1.0/3
           ELSE 0
       END)) / (c.CLASS_END_DATE - c.CLASS_START_DATE),2)*100 "todayattend"
FROM ATTENDCHECK a, CLASS c,teacher t
 where a.tea_id=c.TAKE_CHARGE_TEA and a.tea_id=t.tea_id
GROUP BY a.STU_ID, c.CLASS_ID, c.CLASS_NAME, c.CLASS_START_DATE, c.CLASS_END_DATE , t.tea_name


select * from ATTENDCHECK


   select
           a.ATT_ID "att_id"
           ,s.stu_name  "stu_name"
            ,a.stu_id "stu_id"
            ,to_char(a.ATTEND_DATE,'yyyy-mm-dd') "attend_date"
            ,a.ATTEND_STATUS "attend_status"
            ,a.tea_id "tea_id"
            from  ATTENDCHECK a, STUDENT s ,class c
            where  a.stu_id=s.stu_id  and  a.tea_id=c.TAKE_CHARGE_TEA


            	select
	   		a.ATT_ID "att_id"
	   		,s.stu_name  "stu_name"
			,a.stu_id "stu_id"
			,to_char(a.ATTEND_DATE,'yyyy-mm-dd')  "attend_date"
			,a.ATTEND_STATUS  "attend_status"
            ,c.class_name "class_name"
			from  ATTENDCHECK a,STUDENT s ,class c
			where  a.stu_id = s.stu_id and  a.tea_id=c.TAKE_CHARGE_TEATAKE_CHARGE_TEA,