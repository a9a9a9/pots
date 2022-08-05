<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  

	$(function() {
		$("#pt_day").datepicker({
			changeMonth : true,
			changeYear : true,
			dateFormat : "yy-mm-dd",
			showButtonPanel : true,
			yearRange : "c-99:c+99",
			minDate : "+2d",
			maxDate : "+365d"
		});
	});
  </script>
</head>
<body>
 
<p>Date: <input type="text" id="datepicker"></p>
<input type="text" name="party_end" value="종료날짜" id="pt_day" class="width-100hasDatepicker" required="" size="8" maxlength="8">
 
</body>

</html>
