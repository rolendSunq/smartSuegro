<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="../assets/css/font-awesome.css">
		<title>zipcode</title>

		<!-- Bootstrap core CSS -->
		<link href="../assets/css/bootstrap.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="../assets/js/html5shiv.js"></script>
		  <script src="../assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="modal-open" id="myModal">
			<div class="modal-header">
				<a class="close" data-dismiss="modal"><h3 id="modalClose">×</h3></a>
				<h3>우편 번호 검색</h3>
			</div>
			<div class="modal-body span6 offset3">
				<div class="col-md-5">
					<table class="table-responsive">
						<tr>
							<td>
								<form id="dongForm" method="post">
									<div class="form-inline">
										동 이름: <input type="text" class="form-control" name="dong" id="dong" style="width:200px;">
										<button type="button" id="dongBtn" class="btn btn-primary"><i class="icon-search"></i> 검색</button>
										<c:if test="${check eq 'yes' }">
										<p class="text-danger text-center">${fieldErrors.dong }</p>
										</c:if>
									</div>
									<input type="hidden" id="check" name="check" value="yes">
								</form>
							</td>
						</tr>
					</table>
					<table class="table-hover">
					<c:if test="${check eq 'yes' }">
						<c:if test="${result eq 0 }">
						<tr>
							<td>
								<p class="text-danger text-center">검색 된 결과가 없습니다 .</p>
							</td>
						</tr>
						</c:if>
						<c:if test="${result eq 1 }">
						<tr>
							<td><br>
								<p class="text-center">※ 아래 우편 번호를 클릭하면 자동으로 입력됩니다.</p>
							</td>
						</tr>
							<c:forEach var="zipcodeVO" items="${zipcodeList }">
						<tr>
							<td>
								<a href="javascript:sendAddress('${zipcodeVO.zipcode }', '${zipcodeVO.sido }',	'${zipcodeVO.gugun }', '${zipcodeVO.dong }', '${zipcodeVO.ri }', '${zipcodeVO.bunji }')">
									${zipcodeVO.zipcode }&nbsp;${zipcodeVO.sido }&nbsp;	${zipcodeVO.gugun }&nbsp;${zipcodeVO.dong }&nbsp;${zipcodeVO.ri }&nbsp;${zipcodeVO.bunji }
								</a>
							</td>
						</tr>
							</c:forEach>
						</c:if>
					</c:if>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<a href="'javascript:self.close();'" class="btn btn-primary">확인</a>
			</div>
		</div>
		<script src="../assets/js/jquery.js"></script>
		<script src="../assets/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			function sendAddress(zipcode, sido, gugun, dong, ri, bunji) {
				var address = sido +" "+ gugun +" "+ dong +" "+ ri +" "+ bunji;
				var arrayZipcode = zipcode.split('-');
				$("#post1", opener.document).val(arrayZipcode[0]);
				$("#post2", opener.document).val(arrayZipcode[1]);
				$("#addr1", opener.document).val(address).focus();
				window.close();
			}
			
			$(document).ready(function(){
				$('#dongBtn').click(function(){
					var dong = $('#dong').val();
					if (dong == '')
					{
						alert("찾고자 하는 동 이름을 입력하세요.");
						$('#dong').focus();
						return;
					}
					else
					{
						$('#dongForm').attr('action', 'FindZipcode.do');
						$('#dongForm').submit();
					}
				});
				
				$('#modalClose').click(function(){
					window.close();
				});
			});
		</script>
	</body>
</html>