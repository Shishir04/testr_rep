<%-- 
    Document   : UPDATE
    Created on : Feb 16, 2016, 11:07:28 PM
    Author     : Harshit
--%>

<%@page import="pck.contact"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
     <%
  contact obj=new contact();   
 
obj.id=(request.getParameter("coockie"));
obj.name =(request.getParameter("txtcname"));
obj.email =(request.getParameter("txtcemail"));
obj.group =(request.getParameter("group"));
obj.check=(request.getParameter("chk"));
out.println(obj.check);

 obj.update();

      %>     
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <h1> Update Success</h1>
        <a href='Contact.jsp'>Back</a>
    </body>
</html>
