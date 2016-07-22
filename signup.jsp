<%-- 
    Document   : index
    Created on : Jan 31, 2016, 3:41:45 PM
    Author     : Harshit
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "pck.javaclass"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
         <style>

.hidden {
    display: none;
}
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
         </style>
        <script>
function checkid(){
   
      var e = document.getElementById("mySelect");
           var x = document.getElementById("mySelect").length;
          //  var usn = obj.clusn;
           // var pwd= obj.clpwd;
          var usn=document.myForm.txtuname.value;
        
           
           var i=0;
             var j=0;
            for (i = 0; i < x; i++)
             {
              if((usn == e.options[i].value))
                   {
                       
                                       j=1;
                                     
                   }
              }
if(j==1)
    {
    
 alert("Please Select Another Userid ,this userid has already taken");
 document.getElementById("uid").value="";
        }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    function validateForm() {
    
     var y = document.forms["myForm"]["txtname"].value;
    if (y == null || y == "") {
        alert("Name must be filled out");
        return false;
    }
    
     var h = document.forms["myForm"]["txtuname"].value;
    if (h == null || h == "") {
        alert("User Name must be filled out");
        return false;
    }
    
     var c= document.forms["myForm"]["txtcontact"].value;
    if (c == null || c == "") {
        alert("Contact must be filled out");
        return false;
    }
     var cn= document.myForm.txtcontact.value.length 
    
if(cn < 10)
{
     alert("Enter Valid Contact Info.");
        return false;
    
}
      var p= document.myForm.txtpass.value.length 
    
if(p < 8)
{
     alert("Password must be filled out and of atleast 8 characters");
        return false;
    
}
        
    var x = document.forms["myForm"]["txtemail"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}


</script>


<%

javaclass obj=new javaclass();
obj.clusn=(request.getParameter("txtuname"));
obj.clpwd = (request.getParameter("txtpass"));
 ResultSet rs=obj.check();
%>
    </head>
    <body  background="img/b.jpg">
        <font color="white">
        <h1>Registration Form</h1></font>
        
        <table border="0" align="center">
            <form  name="myForm" action="home.jsp" method="POST"  onsubmit="return validateForm();">
           
            <tbody>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="txtname" value="" size="50"  onkeypress='return event.charCode >= 48 && event.charCode >= 57';/></td>
                </tr>
                 <tr>
                    <td>User Name</td>
                    <td><input type="text" id="uid" name="txtuname" value="" size="50" onblur="checkid()"  /></td>
                </tr>
                <tr>
                    
                    <td>Contact no.</td>
                       <td> <input type="text" name = "txtcontact" value="" maxlength="10" size="50" maxlen="10"  onkeypress='return event.charCode >= 48 && event.charCode <= 57';/></td>
               
                  </tr>
                <tr>
                    <td>E-mail</td>
                    <td><input type="text" name="txtemail" value="" size="50" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpass" value="" size="50"/></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="reset" value="Clear" name="b_Clear" />
                        <input type="submit" value="Submit" name="b_submit" onclick="coock()"/></td>
                </tr>
            </tbody>
            
        </table>
        
         </form>
<%
     rs=obj.check();
%>
<div align="center">
 <select id="mySelect" align="center" name="user" class="hidden">
<%
                   while(rs.next())
                {%>

      <option><%=rs.getString("tbuname")%></option>
      
    
 
      <% 
                            }
%>


 </select>
<%
    
     rs=obj.check();
%>
 <select id="pwdid" align="center" name="user" class="hidden" >
<%
                   while(rs.next())
                {%>

      <option><%=rs.getString("tbpass")%></option> 
      <% 
                            }
%>
 </select>
 <script>
 function coock()
{
     var m = document.forms["myForm"]["txtuname"].value;
  document.cookie=m;
  
}
</script>
    </body>
</html>
