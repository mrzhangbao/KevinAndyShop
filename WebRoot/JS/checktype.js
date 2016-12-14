	function passwordcheck(){
    	
    
    	
			var url="passwordChcek";
			var params = "password="+document.getElementById("password").value;
			sendRequest(url,params,'POST',showresult);
			}
			
			function showresult(){
			
				if(xmlHttpRequest.readyState == 4){
					if(xmlHttpRequest.status == 200){
						var info = xmlHttpRequest.responseText;
						if(info == "1"){
						document.getElementById("bt").disabled=false;
						document.getElementById("result").innerHTML="";
						document.getElementById("bt").style.background="#55ACEF";
						document.getElementById("bt").style.color="#fff"
					
						
						
						}else{
					
						document.getElementById("result").innerHTML= info;
						document.getElementById("bt").disabled=true;
						document.getElementById("bt").style.background="#cccccc";
						document.getElementById("bt").style.color="#000000";
						document.getElementById("result").style.color="red";
						}
						
						
						
						}
				
				}else{
				
				}
			}
			function password(){
				
				
				
				
				
			
						var params = "password="+document.getElementById("password").value;
						if(info != ""){
							document.getElementById("bt").disabled=false;
							document.getElementById("result").innerHTML="";
							document.getElementById("bt").style.background="#55ACEF";
							document.getElementById("bt").style.color="#fff"
								
								
								
						}else{
							
							document.getElementById("result").innerHTML= info;
							document.getElementById("bt").disabled=true;
							document.getElementById("bt").style.background="#cccccc";
							document.getElementById("bt").style.color="#000000";
							document.getElementById("result").style.color="red";
						}
						
						
						
				
			}
			
			