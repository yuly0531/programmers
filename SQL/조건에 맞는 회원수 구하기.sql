/*USER_INFO 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력하는 SQL문을 작성해주세요.*/
SELECT  count(*)
        from USER_INFO 
where substr(DATE_FORMAT(JOINED,'%Y%m%d'),3,2)= '21' and AGE between 20 and 29
