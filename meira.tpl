<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bensínstöð</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
<table>
  <tr>
    <th><h2>Nánar Upplýsingar</h2></th>
  </tr>
  <tr>
    <td><strong>Söluaðili: </strong> {{stod['company']}}</td>
  </tr>
    <tr>
    <td><strong>Staðsetning: </strong> {{stod['name']}}</td>
  </tr>
    <tr>
    <td><strong>Bensín 95: </strong> {{stod['bensin95']}}</td>
  </tr>
    <tr>
    <td><strong>Diesel: </strong> {{stod['diesel']}}</td>
  </tr>
  <tr>
    <td><a href='/company/{{stod['company']}}'>tilbaka</td></a>
  </tr>
   </table>
</body>
</html>