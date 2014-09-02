/**
 * ajax.xhr : 네임스페이스 개념
 */
var ajax={};
ajax.xhr={};
ajax.xhr.Request = function(url, params, callback, method){
	this.url = url;
	this.params = params;
	this.callback = callback;
	this.method = method;
	this.send();
}
/**
 * 디버깅을 위한 뷰 생성
 */
function log(msg){
	var console = document.getElementById("debugConsole");
	if (console != null){
		console.innerHTML += msg + "<br>";
	}
}

var req = null;

ajax.xhr.Request.prototype = {
		getXMLHttpRequest: function(){
			// IE Explorer 브라우저 버전에 따른 ActiveXObject(XMLHttpRequest) 선택 
			if ( window.ActiveXObject ){
				try
				{
					return new ActiveXObject("Msxml2.XMLHTTP");
				}
				catch(e) 
				{
					try
					{
						return new ActiveXObject("Microsoft.XMLDOM");
					}
					catch(e1)
					{ return null; }
				}
			}// MS 외 다른 브라우저일 경우
			else if (window.XMLHttpRequest)
				return new XMLHttpRequest();
			else
				return null;
		},
		send: function(){
			this.req = this.getXMLHttpRequest();
			var httpMethod = this.method ? this.method : "GET";
			// Method 타입이 GET 이나 POST 가 지정 되지 않을 경우 기본으로 GET 으로 지정한다.
			if ( httpMethod != 'GET' && httpMethod != 'POST' )
				httpMethod = 'GET';
			
			// params 값이 null 또는 공백일 경우 null로 지정하고 값이 있으면 저장한다.
			var httpParams = (this.params == null || this.params == '') ? null : this.params;
			
			var httpUrl = this.url;
			
			// 전송 방식이 GET 방식이고 전달할 값이 있을 경우 url에 "?" 문자를 붙이고 parameter 값을 붙인다.
			if ( httpMethod == 'GET' && httpParams != null)
				httpUrl = httpUrl + "?" + httpParams;
			
			this.req.open(httpMethod, http, true);
			
			//Content-Type에 의해 characterEncoding이 결정되게 설정한다.
			this.req.setRequestHeader( 'Content-Type', 'application/x-form-urlencoded');
			
			var request = this;
			
			/**
			 * this.req = (XMLHttpRequest) 객체의 readyState 값이 변경되면 
			 * request.onStateChange.call(request) request = Request 객체의 
			 * onStateChandge 함수에서 변화가 있으면 call 함수를 호출하게 되고 
			 * 실행되는 함수는 this를 담고 있는 request가 된다.
			 */
			//요구(request)를 보냈을 때 이미 응답을 처리하기 위한 함수.
			this.req.onreadystatechange = function(){
				// onStateChange : 상태 변화가 생길 때 발생하는 이벤트
				request.onStateChange.call(request);
			}
			
			this.req.send(httpMehod == 'POST' ? httpParams : null);
		},
		onStateChange: function(){
			this.callback(this.req);
		}
}

