<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CONO:오류</title>
</head>
<body>
	<script type="text/javascript">
		// 전달받은 오류 메세지(msg) 출력 후 이전페이지로 돌아가기
		alert("${msg}");
		history.back();
	</script>	
</body>
</html>