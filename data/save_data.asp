<%

dim id
dim fname
dim lname
dim adress
dim pesel

id = Request.Form("id")
fname = Request.Form("fname")
lname = Request.Form("lname")
adress = Request.Form("adress")
pesel = Request.Form("pesel")

sql="EXEC dbo.updateData @id = '" & id & "', @fname = '" & fname & "', @lname = '" & lname & "', @adress = '" & adress & "', @pesel = '" & pesel & "'"

response.write sql

set conn=Server.CreateObject("ADODB.Connection")
set recordSet=Server.CreateObject("ADODB.recordset")
conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"

recordSet.Open sql,conn

//response.write recordSet.GetString

%>