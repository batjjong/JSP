<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action ="bookProcess2.jsp">
			<div style ="margin:20px;padding:20px; background-color:lightgray;">
				<h1 class="display-1">독서등록</h1>
			</div>
			<div style="margin:10px padding:20px">
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">도서코드</label>
					<input type="text" class="form-control" id="exampleFormControlInput1" name = "code">
				</div>	
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">도서제목</label>
					<input type="text" class="form-control" id="exampleFormControlInput1" name = "title">
				</div>	
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">도서저자</label>
					<input type="text" class="form-control" id="exampleFormControlInput1" name = "writer">
				</div>	
				<div class="mb-3">
					<input type="submit" value = "등록" class="btn btn-primary">
				</div>	
				
			</div>
	
		</form>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>  
</body>
</html>