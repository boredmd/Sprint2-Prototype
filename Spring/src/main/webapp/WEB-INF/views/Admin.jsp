<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
	<title>Admin</title>
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
        	$('#datetoadd').datepicker();
    		})
		}
	</script>
</head>
<body>
<h1>
	This is Admin page.
</h1>
<a href="/sg/">Logout</a>

<form method="get" action="submit">
	<table>
		<tr>
			<th align="left" colspan="2">
				Add Session 
			</th>
		</tr>
		<tr>
			<th align="right">
				Date :
			</th>
			<th>
				<input type="date" id="datetoadd" name="datetoadd" size="20" />
			</th>
		</tr>
		<tr>
			<th align="right">
				Time :
			</th>
			<th>
				<input type="time" name="currenttime" value="24 Hour Format" />
			</th>
		</tr>
		<tr>
			<th align="right">
				Duration :
			</th>
			<th>
				<select name="duration" align="left">
					<option value="2">2 hours</option>
					<option value="3">3 hours</option>
					<option value="4">4 hours</option>
					<option value="5">5 hours</option>
				</select>
			</th>
		</tr>
		<tr>
			<th align="right">
				Repeat frequency :
			</th>
			<th>
				<select name="repeatfreq" align="left">
					<option value="1">Once</option>
					<option value="2">Twice</option>
				</select>
			</th>
		</tr>
		<tr>
			<th align="right">
				Lecturer :
			</th>
			<th>
				<select name="lecturer" align="left">
					<option value="Professor John">Professor John</option>
					<option value="Professor May">Professor May</option>
					<option value="Professor Ken">Professor Ken</option>
					<option value="Professor Kevin">Professor Kevin</option>
				</select>
			</th>
		</tr>
		<tr>
			<th align="right">
				Max attendance :
			</th>
			<th>
				<select name="attendance" align="left">
					<option value="30">30 and below</option>
					<option value="40">40 and below</option>
					<option value="50">50 and below</option>
					<option value="60">60 and below</option>
				</select>
			</th>
		</tr>
		<tr>
			<th align="right">
				Compulsory :
			</th>
			<th align="left">
				<input type="radio" name="compulsory" value="true" checked>Yes<br>
				<input type="radio" name="compulsory" value="false">No
			</th>
		</tr>
		<tr>
			<th align="right">
				Venue :
			</th>
			<th>
				<select name="venue" align="left">
					<option value="lab">Lab</option>
					<option value="tutorial">Tutorial Room</option>
				</select>
			</th>
		</tr>
		<tr>
			<th colspan="2" align="right">
				<input type="submit" value="Submit">
			</th>
		</tr>
	</table>
</form>
</body>
</html>
