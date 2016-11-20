<%
// Laczy sie do bazy i pobiera pesel wyszukujac imie.

response.expires=-1
sql="SELECT pesel FROM clients_tb WHERE fname="
sql=sql & "'" & request.querystring("q") & "'"

set conn=Server.CreateObject("ADODB.Connection")
set recordSet=Server.CreateObject("ADODB.recordset")

conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"

recordSet.Open sql,conn

response.write recordSet.GetString

%>
