<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>User</title>
	<script type="text/javascript">
    var datefield=document.createElement("input")
    datefield.setAttribute("type", "date")
    if (datefield.type!="date"){ //if browser doesn't support input type="date", load files for jQuery UI Date Picker
        document.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
        document.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n')
    }
	</script>
 
	<script>
		if (datefield.type!="date"){ //if browser doesn't support input type="date", initialize date picker widget:
    		jQuery(function($){ //on document.ready
        	$('#birthday').datepicker();
    		})
		}
	</script>
</head>
<body>
<h1>
	This is User page.  
</h1>
<a href="/sg/">Logout</a>
<form method="get" action="retrieve">
		<input type="submit" value="Today">
		<input type="submit" value="This week">
		<input type="date" id="birthday" name="birthday" size="20"/>
		<input type="submit" value="Search"/>
</form>
<form method="get" action="submit">
	<table>
		<tr>
			<th align="right">
				Time :
			</th>
			<th>
				${currenttime}
			</th>
		</tr>
		<tr>
			<th align="right">
				Duration :
			</th>
			<th>
				${duration}
			</th>
		</tr>
		<tr>
			<th align="right">
				Repeat frequency :
			</th>
			<th>
				${repeatfreq}
			</th>
		</tr>
		<tr>
			<th align="right">
				Lecturer :
			</th>
			<th>
				${lecturer}
			</th>
		</tr>
		<tr>
			<th align="right">
				Max attendance :
			</th>
			<th>
				${attendnace}
			</th>
		</tr>
		<tr>
			<th align="right">
				Compulsory :
			</th>
			<th>
				${compulsory}
			</th>
		</tr>
		<tr>
			<th align="right">
				Venue :
			</th>
			<th>
				${venue}
			</th>
		</tr>
	</table>
</form>
</body>
</html>
