<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="view/assets/ico/favicon.png"><!-- favicon.png 이미지 만들어 넣을 것 -->
		<link rel="stylesheet" href="view/assets/css/font-awesome.css">
		<title>Smart Suegro HOME</title>

		<!-- Bootstrap core CSS -->
		<link href="view/assets/css/bootstrap.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="view/assets/js/html5shiv.js"></script>
		  <script src="view/assets/js/respond.min.js"></script>
		<![endif]-->

		<!-- Custom styles for this template -->
		<link href="view/assets/css/carousel.css" rel="stylesheet">
		<style type="text/css">
			.login-form {
				padding: 7px 7px 7px 7px;
			}

			#username, #password {
				margin-bottom: 5px;
			}
		</style>
	</head>
	<body>
		<header>
			<!-- NAVBAR START ================================================== -->
			<div class="navbar-wrapper">
				<div class="container">
					<div class="navbar navbar-inverse navbar-static-top">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#"><i class="icon-home"></i> Smart Suegro</a>
						</div>
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-mobile-phone"></i> SAMSUNG <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">SKT</a></li>
										<li><a href="#">KT</a></li>
										<li><a href="#">LG U+</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-mobile-phone"></i> LG <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Product-1</a></li>
										<li><a href="#">Product-2</a></li>
										<li><a href="#">Product-3</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-apple"></i> Apple <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">3GS</a></li>
										<li><a href="#">4G/4GS</a></li>
										<li><a href="#">5GS</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-wrench"></i> A/S <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Product-1</a></li>
										<li><a href="#">Product-2</a></li>
										<li><a href="#">Product-3</a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-coffee"></i> 고객지원 <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Product-1</a></li>
										<li><a href="#">Product-2</a></li>
										<li><a href="#">Product-3</a></li>
									</ul>
								</li>
							</ul>
							<ul class="nav navbar-nav pull-right">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i>${loginName == null ? '로그인' : loginName }<b class="caret"></b></a>
									<c:choose>
									<c:when test="${empty loginName }">
									<div class="dropdown-menu login-form">
										<form method="post" action="index.do" accept-charset="UTF-8" id="formSignIn">
											<input type="text" class="form-control" placeholder="아이디" id="id" name="id">
											<input type="password" class="form-control" placeholder="비밀번호" id="password" name="password">
											<button type="button" class="btn btn-block" id="sign-in"> 로그인</button>
											<button type="submit" class="btn btn-primary btn-block"><i class="icon-signin"></i> 회원가입</button>
										</form>
									</div>
									</c:when>
									<c:otherwise>
									<div class="dropdown-menu login-form">
										<form method="post" action="logout.do" accept-charset="UTF-8" id="formSignIn">
											<button type="submit" class="btn btn-primary btn-block"><i class="icon-signout"></i> 로그아웃</button>
											<button type="button" class="btn btn-primary btn-block" id="myInfo"><i class="icon-info-sign"></i> 개인정보</button>
											<button type="button" class="btn btn-primary btn-block" id="myPoint"><i class="icon-stackexchange"></i> myPoint</button>
											<button type="button" class="btn btn-primary btn-block" id="myOrder"><i class="icon-pencil"></i> 나의견적</button>
											<button type="button" class="btn btn-primary btn-block" id="myQna"><i class="icon-question"></i> 문의사항</button>
											<input type="hidden" name="memberIndex">
										</form>
									</div>
									</c:otherwise>
									</c:choose>
								</li>
							</ul>
							<ul class="nav navbar-nav pull-right">
								<li>
									<a href="#"><i class="icon-suitcase"></i> MyShopping <b class="icon-angle-right"></b></a>
								</li>
							</ul>
						</div>
					</div>
					<!-- BANNER START -->
					<!-- <div class="jumbotron">
						<h1>PHONE NAME</h1>
						<p>Smart Phone by Company</p>
						<p>
							<a class="btn btn-lg btn-primary" href="../../components/#navbar"> 상세보기&raquo;</a>
						</p>
					</div> -->
					<!-- BANNER END -->
				</div>
				<!-- nav-tab START ================================================== -->
				<!-- 
				<div class="navtab-wrapper">
					<div class="container">
						<div class="navbar-header">
							<ul class="nav nav-tabs">
								<li id="liPerson" class="active"><a href="#" id="aTagPerson">개인정보</a></li>
								<li id="liPoint"><a href="#" id="aTagPoint">myPoint</a></li>
								<li id="liEstimate"><a href="#" id="aTagEstimate">나의견적</a></li>
								<li id="liQuestion"><a href="#" id="aTagQuestion">문의사항</a></li>
							</ul>
						</div>
					</div>
				</div>
				 -->
				<!-- nav-tab END ================================================== -->
			</div>
		<!-- NAVBAR END ================================================== -->
		</header>
		<!-- contents START ================================================== -->
		<div class="content-wrapper">
			<div class="container">
				<div class="container marketing">
					<div class="row featurette">
						<!-- myInfo START ================================================== -->
						<div class="col-md-8 col-md-offset-1" id="myInfo">
						<c:choose>
							<c:when test="${memberPageIndex == '1'}">
							   	<c:import url="modifyMember.jsp"/>
							</c:when>
							<c:when test="${memberPageIndex == '2'}">
							   	<c:import url="estimate.jsp"/>
							</c:when>
							<c:when test="${memberPageIndex == '3'}">
							   	<c:import url="orderStatus.jsp"/>
							</c:when>
							<c:when test="${memberPageIndex == '4' }">
								<c:import url="myQna.jsp"/>
							</c:when>
						</c:choose>
						</div>
						<!-- myInfo END ================================================== -->
					</div><!-- container END -->
					<!-- contents END ================================================== -->
					<hr class="featurette-divider">
					<!-- FOOTER START (!!! 주의 Footer 부분 !!!!) -->
					<footer>
						<p class="pull-right"><a href="#">Back to top</a></p>
						<p>&copy; 2013 Company, Smart Suegro Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
					</footer>
					<!-- FOOTER END -->
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="view/assets/js/jquery.js"></script>
		<script src="view/assets/js/bootstrap.min.js"></script>
		<script>
			$(document).ready(function(){
				$('[id^=li]').click(function(){
					$('[id^=li]').attr('class', '');
					$(this).attr('class', 'active');
				});
				
				$('[id^=my]').click(function(){
					var id = $(this).attr('id');
					switch (id)
					{
					case 'myInfo':
						$('[name=memberIndex]').val(1);
						break;
					case 'myPoint':
						$('[name=memberIndex]').val(2);
						break;
					case 'myOrder':
						$('[name=memberIndex]').val(3);
						break;
					case 'myQna':
						$('[name=memberIndex]').val(4);
						break;
					}
					$('#formSignIn').attr('action', 'memberInfoPage.do').submit();
				});
				
				$("#zipcodeBtn").click(function(){
					window.open('modalZipcode.jsp','popup', 'width=700, height=300, directories=no, menubar=no, scrollbars=yes, resizable=no, copyhistory=no');
					$("#userModifyForm").attr("target", "popup");
					$("#userModifyForm").attr("action", "zipcode.do");
					//$("#userModifyForm").attr("action","callZipcode.do");
					$("#userModifyForm").submit();
				});
				
			});
		</script>
	</body>
</html>