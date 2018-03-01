<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bensínstöð</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
<h1>Söluaðilar eldsneytis á Íslandi</h1>
<div class="company">
    % companies = []
    % for station in data['results']:
        %if station['company'] not in companies:
            %companies.append(station['company'])
            <div class="kassi">
                <img src="/static/{{station['company']}}.png">
                <a href="/company/{{station['company']}}"><h2>{{station['company']}}</h2></a>
            </div>
            %end
        %end
    % end
</div>
<div class="odyrt">
    <p>Ódýrasti Bensínið: {{bensin['company']}} {{bensin['bensin95']}} Kr.</p>
    <p>Ódýrasti Dieselið: {{diesel['company']}} {{diesel['diesel']}} Kr. </p>
    <p>Uppfært:{{t.strftime('%d.%m.%Y kl:%H:%M:%S')}}</p>

</div>
</body>
</html>