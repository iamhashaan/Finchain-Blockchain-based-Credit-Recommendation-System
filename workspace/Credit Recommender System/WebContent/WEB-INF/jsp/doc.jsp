<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  class="upload-box" >
						<input type="file" id="file" name="file1" /> 
							<input type="hidden" name="username" value="${name}">
						<input type="submit" id="upload-button" value="upload" />
						
					</form>
					
					
						
	<script>
	$(document).on("#upload-button", "click", function() {
		
		alert("File has been uploaded successfully");
	    $.ajax({
	        type: 'POST',
	        url: "/Upload",
	      
	        data: $(".upload-box").serialize(),
	        contentType: "multipart/form-data",
	        processData: false,
	        success: function(msg) {
	            alert("File has been uploaded successfully");
	        },
	        error:function(msg) {
	            $("#upload-error").html("Couldn't upload file");
	        }
	    });
	});
	</script>
</body>
</html>