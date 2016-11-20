<%

dim id
dim fname
dim lname
dim adress
dim pesel
dim validate


id = Request.Form("id")
fname = Request.Form("fname")
lname = Request.Form("lname")
adress = Request.Form("adress")
pesel = Request.Form("pesel")

validate = true
If IsNumeric(id) And IsNumeric(pesel) Then

Else
    validate = FALSE
End If
If Len(fname) > 50 And Len(lname) > 50 Then
    validate = FALSE
End If
If Len(adress) > 100 Then
    validate = FALSE
End If


If validate = TRUE Then
    sql="EXEC dbo.updateData @id = '" & id & "', @fname = '" & fname & "', @lname = '" & lname & "', @adress = '" & adress & "', @pesel = '" & pesel & "'"
    response.write sql

    set conn=Server.CreateObject("ADODB.Connection")
    set recordSet=Server.CreateObject("ADODB.recordset")
    conn.Open "Provider=SQLOLEDB; Data Source=MASTER\SQLEXPRESS; Initial Catalog=TestDB; User ID=sa; Password=test"

    recordSet.Open sql,conn
Else
    response.write ("Cos poszlo nietak!")
End If

%>