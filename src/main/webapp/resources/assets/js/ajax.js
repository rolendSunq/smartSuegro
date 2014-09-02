/**
 * ajax.xhr : ���ӽ����̽� ����
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
 * ������� ���� �� ����
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
			// IE Explorer ������ ������ ���� ActiveXObject(XMLHttpRequest) ���� 
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
			}// MS �� �ٸ� �������� ���
			else if (window.XMLHttpRequest)
				return new XMLHttpRequest();
			else
				return null;
		},
		send: function(){
			this.req = this.getXMLHttpRequest();
			var httpMethod = this.method ? this.method : "GET";
			// Method Ÿ���� GET �̳� POST �� ���� ���� ���� ��� �⺻���� GET ���� �����Ѵ�.
			if ( httpMethod != 'GET' && httpMethod != 'POST' )
				httpMethod = 'GET';
			
			// params ���� null �Ǵ� ������ ��� null�� �����ϰ� ���� ������ �����Ѵ�.
			var httpParams = (this.params == null || this.params == '') ? null : this.params;
			
			var httpUrl = this.url;
			
			// ���� ����� GET ����̰� ������ ���� ���� ��� url�� "?" ���ڸ� ���̰� parameter ���� ���δ�.
			if ( httpMethod == 'GET' && httpParams != null)
				httpUrl = httpUrl + "?" + httpParams;
			
			this.req.open(httpMethod, http, true);
			
			//Content-Type�� ���� characterEncoding�� �����ǰ� �����Ѵ�.
			this.req.setRequestHeader( 'Content-Type', 'application/x-form-urlencoded');
			
			var request = this;
			
			/**
			 * this.req = (XMLHttpRequest) ��ü�� readyState ���� ����Ǹ� 
			 * request.onStateChange.call(request) request = Request ��ü�� 
			 * onStateChandge �Լ����� ��ȭ�� ������ call �Լ��� ȣ���ϰ� �ǰ� 
			 * ����Ǵ� �Լ��� this�� ��� �ִ� request�� �ȴ�.
			 */
			//�䱸(request)�� ������ �� �̹� ������ ó���ϱ� ���� �Լ�.
			this.req.onreadystatechange = function(){
				// onStateChange : ���� ��ȭ�� ���� �� �߻��ϴ� �̺�Ʈ
				request.onStateChange.call(request);
			}
			
			this.req.send(httpMehod == 'POST' ? httpParams : null);
		},
		onStateChange: function(){
			this.callback(this.req);
		}
}

