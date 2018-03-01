<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bensínstöð</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	<h1>{{nafn}}</h1>
	<table>
  <tr>
    <th>Company</th>
    <th>Location</th>
  </tr>
  %teljari = 0
    %for i in data['results']:
        %if i['company'] == nafn:
        %teljari += 1
          <tr>
            <td><a href='/meira/{{i['key']}}'>{{i['company']}}</td></a>
            <td>{{i['name']}}</td>
          </tr>
         %end
     %end
   </table>
  <h4><a href='/'>tilbaka</a></h4>
   <h3>Fjöldi stöðva: {{teljari}}</h3>
</body>
</html>