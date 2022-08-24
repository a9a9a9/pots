 function fregister_submit(f) {

		if(f.pt_type.value == "개인파티장"){
			if(f.pt_company_saupja.value == ""){	
				alert("주민번호를 입력해야 합니다.");
				f.pt_company_saupja.focus();
				return false;	
			}
		}

        if (!f.agree.checked) {
            alert("파트너가입약관과 정보제공에 동의하셔야 가입하실 수 있습니다.");
            f.agree.focus();
            return false;
        }
				
		/*/이메일
		var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		if(regex.test(f.pt_email.value) === false) {  
			alert("잘못된 이메일 형식입니다.");  
            f.pt_email.focus();
			return false;  
		}
		*/

		if (confirm("파트너 등록을 신청하시겠습니까?")) {
			f.action = "http://localhost/partyList";
			return true;
		}

		return false;
    }

	
	function fn_type(f)
	{
    	var idx = f.pt_type.value;
		if(idx == "1"){			
			$('#li_saupja').show();
			$('#li_saupja_sub').show();
		}
		else{
			$('#li_saupja').hide();
			$('#li_saupja_sub').hide();
		}
	}