 <!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>Web Page Demo</title>
</head>
<body>
        <h1>Wyciaganie danych z SQL</h1>
<%

Dim Conn
Dim RecordSet
Dim SQL

//SQL = "SELECT * FROM clients_tb"
//SQL = "DECLARE @string VARCHAR(8000);DECLARE @xml XML;SET @xml = (SELECT * FROM clients_tb FOR XML PATH); SET @string = CONVERT (varchar(8000), @xml); SELECT @string;"
SQL = "EXEC getAllData"

Set Conn = Server.CreateObject("ADODB.Connection")
Set RecordSet = Server.CreateObject("ADODB.Recordset")
Conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"

RecordSet.Open SQL,Conn

If RecordSet.EOF Then
    Response.Write("No records returned.")
Else
     Response.Write("There are some records. </br>")
     Response.Write RecordSet.GetString
End If

'If Recordset.EOF Then
'    Response.Write("No records returned.")
'Else
'    Response.Write("There are some records. </br>")
'    Do While NOT Recordset.Eof
'        Response.write Recordset("fname")
'        Response.write Recordset("lname")
'        Response.write Recordset("pesel")
'        Response.write "<br>"
'        Recordset.MoveNext
'    Loop
'End If

%>
</body>
</html>