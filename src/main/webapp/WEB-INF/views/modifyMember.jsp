<div class="regForm">
	<header id="introtext">
		<div class="page-header">
			 <h1>개인정보수정</h1>
		</div>
	</header>
	<form id="userModifyForm" class="form-horizontal" role="form">
		<fieldset>
			<div class="form-group">
				<label class="col-lg-2 control-label" for="username">이름</label>
				<div class="col-lg-5">
					<input type="text" name="name" class="form-control" id="name" value="${loginVO.getName() }" readonly="readonly" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label" for="password">새 비밀번호</label>
				<div class="col-lg-5">
					<input class="validate[required,length[7,15][password]] form-control" type="password" class="form-control" name="password" id="password" placeholder="새 비밀번호 입력" required="required">
				</div>
			</div>
		</fieldset>
		<fieldset>
			<div class="form-group">
				<label class="col-lg-2 control-label"></label>
				<div class="col-lg-5">
					<input type="text"class="form-control" name="rePassword" id="rePassword" placeholder="비밀번호 재 입력" required="required">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">우편번호</label>
				<div class="col-lg-10 form-inline">
					<input type="text" class="form-control" name="post1" id="post1" value="${loginVO.getZipcode() }" style="width: 180px;" readonly> -
					<input type="text" class="form-control" name="post2" id="post2" value="${loginVO.getZipcode() }" style="width: 180px;" readonly>&nbsp;&nbsp;
					<button type="button" class="btn btn-primary" id="zipcodeBtn">우편번호 찾기</button>
				</div>
				<label class="col-lg-2 control-label"></label>
				<div class="col-lg-10">
					<label>제품을 받으실 주소를 정확하게 입력해 주세요.</label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">주소 1</label>
				<div class="col-lg-7">
					<input type="text" class="form-control" name="address1" id="addr1" value="${loginVO.getAddress1() }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">주소 2</label>
				<div class="col-lg-7">
					<input type=text class="form-control" name="address2" id="addr2" value="${loginVO.getAddress2() }" placeholder="나머지 주소 입력해 주세요.">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">연락처</label>
				<div class="col-lg-10 form-inline">
					<input type="text" class="form-control" name="phone" id="phone" placeholder="ex. 010-1234-5678" value="${loginVO.getPhone() }" style="width: 200px;" required="required">
					<label>문자정보 서비스를 받으시겠습니까?</label>
					<input type="checkbox" name="sms">
					<label>* 주문확인, 배송현황, 이벤트 공지 서비스 제공</label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이메일</label>
				<div class="col-lg-10 form-inline">
					<input type="email" class="form-control" name="email" id="email" value="${loginVO.getEmail() }" placeholder="ex. hong@hanmail.net" style="width: 200px;" required="required">
					<label>이메일 정보 서비스를 받으시겠습니까?</label>
					  <input type="checkbox" name="예">
					<label> * 주문, 결제, 이벤트 정보 제공, 단 유효하지 않은 이메일은 서비스 불가</label>
				</div>
			</div>
		</fieldset>
		<fieldset>
			<div class="form-group">
				<label class="col-lg-2 control-label"></label>
				<div class="col-lg-10 form-inline">
					<button type="submit" class="btn btn-primary">정보수정</button>&nbsp;
					<button type="reset" class="btn btn-primary">다시작성</button>
				</div>
			</div>
		</fieldset>
	</form>
</div><!-- .regForm -->