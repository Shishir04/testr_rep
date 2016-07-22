<%-- 
    Document   : home
    Created on : Feb 10, 2016, 5:04:01 PM
    Author     : Harshit
--%>
<%@page import = "pck.javaclass"%>
<%@page import = "pck.contact"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
contact oo=new contact();
javaclass obj=new javaclass();
obj.clname=(request.getParameter("txtname"));
obj.cluname = (request.getParameter("txtuname"));
obj.clcontact = request.getParameter("txtcontact");
obj.clemail = request.getParameter("txtemail");
obj.clpass = request.getParameter("txtpass");
oo.id= obj.cluname;

obj.insert();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Success</title>
                 <style>


html { height: 100% }
body {
    background-color: #dddddd;
    background-image: -webkit-gradient(radial, 50% 0%,100,50% 150%,100, from(#333333), to(#dddddd));
    background-image: -webkit-radial-gradient(50% 100%, #dddddd, #333333);
    background-image: -moz-radial-gradient(50% 100%, #dddddd, #333333);
    background-image: -o-radial-gradient(50% 100%, #dddddd, #333333);
    background-image: -ms-radial-gradient(50% 100%, #dddddd, #333333);
    background-image: radial-gradient(50% 100%, #dddddd, #333333);
    color: #fff;
    overflow: hidden;
    height: 100%;
    -webkit-text-size-adjust: 100%; /* Stops Mobile Safari from auto-adjusting font-sizes */
}
.hidden {
    display: none;
}
         </style>
    </head>
    <body>
        <h1>Congratulations Your Data Has Saved Successfully</h1>
     
    <!--    <form action="sendmail.jsp">
            <input type="text" name="uid" value="" size="50" />
              <input type="submit" value="Go to Home Page" />
        </form>-->
        <a href="sendmail.jsp">Go to Home Page</a>
   
     <!-- <script>
           alert(document.cookie);
          </script>-->
    </body>
</html>
