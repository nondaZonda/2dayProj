 <!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>Web Page Demo</title>
</head>
<body>
    <h1>Moja pierwsza strona</h1>
<%

Dim Conn
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"



%>
</body>
</html>