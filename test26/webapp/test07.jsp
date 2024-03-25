<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.kh.dto.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL(Java Standard Tag Library) FMT</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>FMT(Format : 표시형식)</h2>
<c:set var="num" value="12345678.987654321"></c:set>
<c:set var="data" value="3,652,733"></c:set>
<c:set var="su1" value="0"></c:set>
<c:set var="su2" value="4"></c:set>
<c:set var="su3" value="-6500000"></c:set>
<c:set var="today" value="<%=new Date() %>"></c:set>
<br><hr><br>
<h3>01. 숫자로 바꾸는 변환문 fmt:parseNumber</h3>
<c:out value="${data}"></c:out>
<p><fmt:parseNumber value="${data}" pattern="0,000" var="num2"></fmt:parseNumber></p>
<p>${num2}</p>
<p>1년은 ${num2/10000}일 입니다.</p>
<h3>02. 숫자 표시형식 변환문 fmt:formatNumber</h3>
<p>groupingUsed 속성 : 천단위 구분기호 사용여부</p>
<p><fmt:formatNumber value="${num}" groupingUsed="true"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1}" groupingUsed="true"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3}" groupingUsed="true"></fmt:formatNumber></p>
<br>
<p>pattern 속성 활용</p>
<p><fmt:formatNumber value="${num}" pattern="#,##0"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1}" pattern="#,##0"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3}" pattern="#,##0"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${num}" pattern="\#,##0"></fmt:formatNumber></p>
<br>
<p><fmt:formatNumber value="${num}" pattern="#,##"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1}" pattern="#,##"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3}" pattern="#,##"></fmt:formatNumber></p>
<br>
<p><fmt:formatNumber value="${num}" pattern="0.00"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1}" pattern="0.00"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3}" pattern="0.00"></fmt:formatNumber></p>
<br>
<h3>type 속성 : percent</h3>
<p><fmt:formatNumber value="${num }" type="percent"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1 }" type="percent"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3 }" type="percent"></fmt:formatNumber></p>
<br>
<h3>type 속성 : currency</h3>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber></p>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber></p>
<br>
<h3>국가-언어 코드 설정</h3>
<h4>대한민국(ko_KR)</h4>
<fmt:setLocale value="ko_KR"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>일본(ja_JP)</h4>
<fmt:setLocale value="ja_JP"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>미국(en_US)</h4>
<fmt:setLocale value="en_US"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>중국(zh_CN)</h4>
<fmt:setLocale value="zh_CN"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>대만(zh_TW)</h4>
<fmt:setLocale value="zh_TW"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>베트남(vi_VN)</h4>
<fmt:setLocale value="vi_VN"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>말레이시아(ms_MY)</h4>
<fmt:setLocale value="ms_MY"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>프랑스(fr_FR)</h4>
<fmt:setLocale value="fr_FR"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<br>
<h4>독일(de_DE)</h4>
<fmt:setLocale value="de_DE"/>
<p><fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su1 }" type="currency"></fmt:formatNumber>
<p><fmt:formatNumber value="${su3 }" type="currency"></fmt:formatNumber>
<p><fmt:formatDate value="${today}" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<fmt:setLocale value="ko_KR"/>
<br>
<hr>
<br>
<c:set var="date1" value="2024-03-25"></c:set>
<c:set var="time1" value="09:26:29"></c:set>
<c:set var="today2" value="<%=new Date() %>"></c:set>
<br>
<h2>날짜 데이터 표시 형식 지정</h2>
<h3>문자열을 날짜/시간 데이터로 변환</h3>
<fmt:parseDate value="${date1 }" pattern="yyyy-MM-dd" var="date2"></fmt:parseDate>
<fmt:parseDate value="${time1 }" pattern="HH:mm:ss" var="time2"></fmt:parseDate>
<p>문자열을 날짜 데이터로 변환 : ${date2}</p>
<p>문자열을 시간 데이터로 변환 : ${time2}</p>
<br>
<h3>날짜/시간의 표시형식을 지정</h3>
<p>type : both - <fmt:formatDate value="${today2 }" type="both"></fmt:formatDate></p>
<p>type : date - <fmt:formatDate value="${today2 }" type="date"></fmt:formatDate></p>
<p>type : time - <fmt:formatDate value="${today2 }" type="time"></fmt:formatDate></p>
<p>문자열을 날짜 데이터로 변환 : ${date2}</p>
<p>문자열을 시간 데이터로 변환 : ${time2}</p>
<h3>dateStyle 속성 : full, long, medium, short</h3>
<h4>type : date dateStyle : full, long, medium, short</h4>
<p> dateStyle : full - <fmt:formatDate value="${today2 }" type="date" dateStyle="full"/></p>
<p> dateStyle : long - <fmt:formatDate value="${today2 }" type="date" dateStyle="long"/></p>
<p> dateStyle : medium - <fmt:formatDate value="${today2 }" type="date" dateStyle="medium"/></p>
<p> dateStyle : short - <fmt:formatDate value="${today2 }" type="date" dateStyle="short"/></p>
<p></p>
<h4>type : time dateStyle : full, long, medium, short</h4>
<p> dateStyle : full - <fmt:formatDate value="${today2 }" type="time" dateStyle="full"/></p>
<p> dateStyle : long - <fmt:formatDate value="${today2 }" type="time" dateStyle="long"/></p>
<p> dateStyle : medium - <fmt:formatDate value="${today2 }" type="time" dateStyle="medium"/></p>
<p> dateStyle : short - <fmt:formatDate value="${today2 }" type="time" dateStyle="short"/></p>
<p></p>
<h4>type : both dateStyle : full, long, medium, short</h4>
<p> dateStyle : full - <fmt:formatDate value="${today2 }" type="both" dateStyle="full"/></p>
<p> dateStyle : long - <fmt:formatDate value="${today2 }" type="both" dateStyle="long"/></p>
<p> dateStyle : medium - <fmt:formatDate value="${today2 }" type="both" dateStyle="medium"/></p>
<p> dateStyle : short - <fmt:formatDate value="${today2 }" type="both" dateStyle="short"/></p>
<p></p>
<h3>표시 형식 코드</h3>
<p>y:년도, M:월, d:일, D:현재 년도 1월1일부터 몇 일째인지, E:요일, a:오전/오후, h:12시간제, H:24시간제, m:분, s:초, S:밀리초</p>
<h4>pattern의 속성</h4>
<p>날짜 표시형식 코드를 지정하여 출력</p>
<p><fmt:formatDate value="${today2}" pattern="yyyy년 MM월 dd일 EEEE a hh:mm:ss"/>
<p><fmt:formatDate value="${today2}" pattern="yy/M/d E H:m:s"/>
<br>
<hr>
<br>
<h2>timeZone(시간대) 태그</h2>
<p>setLocale은 지정된 다음부터 변경 전까지 계속 변경되지만, timeZone은 해당 하위
 요소에만 적용</p>
<h3>서울</h3>
<p>
<fmt:timeZone value="Asia/Seoul">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>도쿄</h3>
<p>
<fmt:timeZone value="Asia/Tokyo">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>뉴욕</h3>
<p>
<fmt:timeZone value="America/New_york">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>파리</h3>
<p>
<fmt:timeZone value="Europe/Paris">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>런던</h3>
<p>
<fmt:timeZone value="Europe/London">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h3>세계표준시(UTC)</h3>
<p>
<fmt:timeZone value="UTC">
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</fmt:timeZone>
</p>
<h2>setTimeZone(시간대) 태그</h2>
<p>setLocale은 해당 화폐단위와 언어가 모두 변경되지만,
setTimeZone은 해당 지역의 시간대로 날짜/시간만 적용</p>
<h3>서울(대한민국)</h3>
<p>
	<fmt:setTimeZone value="Asia/Seoul"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<br>
<h3>도쿄(일본)</h3>
<p>
	<fmt:setTimeZone value="Asia/Tokyo"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<br>
<h3>뉴욕(미국)</h3>
<p>
	<fmt:setTimeZone value="America/New_york"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<br>
<h3>런던(영국)</h3>
<p>
	<fmt:setTimeZone value="Europe/London"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<br>
<h3>파리(프랑스)</h3>
<p>
	<fmt:setTimeZone value="Europe/Paris"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<h3>세계표준시(UTC)</h3>
<p>
	<fmt:setTimeZone value="UTC"/>
	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
</p>
<fmt:setTimeZone value="Asia/Seoul"/>
<br><hr><br>
<p style="font-size:32px;color:red"><strong>&#8251DB(datetime) ->Java(String) -> Webpage(parseDate -> formatDate)</strong></p>
</body>
</html>