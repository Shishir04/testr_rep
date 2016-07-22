          <%-- 
    Document   : trial
    Created on : Feb 11, 2016, 6:12:11 PM
    Author     : Harshit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "pck.contact"%>
<%@page import = "pck.javaclass"%>

<!DOCTYPE html>
      <%
  contact obj=new contact();   
  javaclass obj2=new javaclass();

obj.id=(request.getParameter("coockie"));
obj.name =(request.getParameter("txtcname"));
obj.email =(request.getParameter("txtcemail"));
obj.group =(request.getParameter("group"));
obj.check=(request.getParameter("chk"));
out.println(obj.check);

  /*  if(request.getParameter("chk") == "1")
       {
         obj.insert();
       }
     else if(request.getParameter("chk") =="0")
       {
   obj.update(); 
       }*/

 obj.insert();

      %>     
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
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
 a {
    color: hotpink;
}
         </style>
    </head>
    <body>
        <h1>Contact Has Been Saved Successfully</h1>
        <a href="Contact.jsp">Back..</a>
    </body>
</html>
