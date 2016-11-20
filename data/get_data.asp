<%

sql="EXEC getAllData"

set conn=Server.CreateObject("ADODB.Connection")
set recordSet=Server.CreateObject("ADODB.recordset")
conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"

recordSet.Open sql,conn

response.write recordSet.GetString

%>