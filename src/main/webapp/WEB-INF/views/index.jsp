<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="./resources/assets/ico/favicon.png">
		<link rel="stylesheet" href="./resources/assets/css/font-awesome.css">
		<title>Smart Suegro HOME</title>

		<!-- Bootstrap core CSS -->
		<link href="./resources/assets/css/bootstrap.css" rel="stylesheet">

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		  <script src="./resources/assets/js/html5shiv.js"></script>
		  <script src="./resources/assets/js/respond.min.js"></script>
		<![endif]-->

		<!-- Custom styles for this template -->
		<link href="./resources/assets/css/carousel.css" rel="stylesheet">
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
		<!-- NAVBAR START================================================== -->
		<div class="navbar-wrapper">
			<div class="container">
				<div class="navbar navbar-inverse navbar-static-top">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.do"><i class="icon-home"></i> Smart Suegro</a>
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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-mobile-phone"></i> SK <b class="caret"></b></a>
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
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-user"></i> ${loginName == null ? '로그인' : loginName }<b class="caret"></b></a>
								<c:choose>
								<c:when test="${empty loginName }">
								<div class="dropdown-menu login-form">
									<form method="post" action="join.do" accept-charset="UTF-8" id="formSignIn">
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
			</div>
		</div>
		<!-- NAVBAR END================================================== -->
		
		<!-- Carousel START================================================== -->
		<div id="myCarousel" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="./resources/assets/img/slide1.jpg" alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>스마트 슈에그로</h1>
							<p>스마트 슈에그로는 똑똑한 장인이라는 뜻입니다. 저희는 고객에게 장인의 정신으로 완벽한 제품을 제공합니다.</p>
							<p><a class="btn btn-large btn-primary" href="#">이용하기</a></p>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="./resources/assets/img/slide2.jpg" alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>GOOGLE NEXUS 예약 판매</h1>
							<p>구글사와 국내 독점 계약</p>
							<p><a class="btn btn-large btn-primary" href="#">구매하기</a></p>
						</div>
					</div>
				</div>
				<div class="item">
					<img src="./resources/assets/img/slide3.jpg" alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>One more for good measure.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
							<p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div>
		<!-- Carousel END================================================== -->

		${loginMessage }<br>
		${name }
		<!-- Marketing messaging and featurettes ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->
		<div class="container marketing">
			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">
					<h2>Heading</h2>
					<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
					<p><a class="btn btn-default" href="#">View details &raquo;</a></p>
				</div><!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">
					<h2>Heading</h2>
					<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
					<p><a class="btn btn-default" href="#">View details &raquo;</a></p>
				</div><!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<img class="img-circle" src="data:image/png;base64," data-src="holder.js/140x140" alt="Generic placeholder image">
					<h2>Heading</h2>
					<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
					<p><a class="btn btn-default" href="#">View details &raquo;</a></p>
				</div><!-- /.col-lg-4 -->
			</div><!-- /.row -->
			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-5">
					<img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
				<div class="col-md-7">
					<h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
					<p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
				</div>
				<div class="col-md-5">
					<img class="featurette-image img-responsive" src="data:image/png;base64," data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->


			<!-- FOOTER -->
			<footer>
				<p class="pull-right"><a href="#">Back to top</a></p>
				<p>&copy; 2013 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
			</footer>

		</div><!-- /.container -->

		<!-- Bootstrap core JavaScript ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="./resources/assets/js/jquery-1.11.1.min.js"></script>
		<script src="./resources/assets/js/bootstrap.min.js"></script>
		<script src="./resources/assets/js/holder.js"></script>
		<script>
			!function ($) {
				$(function(){
					// carousel demo
					$('#myCarousel').carousel();
				});
				
				$('#sign-in').click(function(){
					var idValue = $('#userId').val();
					var passwordValue = $('#password').val();
					// 정규표현식 --> ^ : 시작, $ : 끝, [a-z] : 영문으로 시작, [a-z0-9] 영문과 숫자조합, {6,14} 7자 이상  15자 이하 
					var regExp = /^[a-z][a-z0-9]{6,14}$/;
					
					if ( !idValue && !passwordValue)
					{
						alert('아이디와 패스워드를 입력하세요');
						$('#userId').focus();
						return;
					}
					
					if ( !idValue )
					{
						alert('아이디를 입력하세요.');
						$('#userId').focus();
						return;
					}
					
					if ( !passwordValue )
					{
						alert('패스워드를 입력하세요.');
						$('#password').focus();
						return;
					}
					
					if (!regExp.test(idValue) || !regExp.test(passwordValue))
					{
						alert('아이디 또는 패스워드가 맞지 않습니다.');
						$('#password').val('');
						$('#userId').val('').focus();
						return;
					}
					else
					{
						$('#formSignIn').submit();
					}
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
			}(window.jQuery);
		</script>
	</body>
</html>