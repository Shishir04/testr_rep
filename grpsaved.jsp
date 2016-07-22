<%-- 
    Document   : grpsaved
    Created on : Feb 16, 2016, 6:50:50 PM
    Author     : Harshit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "pck.contact"%>
<!DOCTYPE html>
<script>
    
    </script>
    
     <%  
                contact b=new contact();  
                 b.newgrpnam = request.getParameter("groupname");
               b.insertgrp();
                 
            %>
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
        <h1>Congratulations Your Data Has Saved Successfully</h1>
             <a href="Contact.jsp">Back</a>
    </body>
</html>
