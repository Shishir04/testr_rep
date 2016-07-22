<%-- 
    Document   : logincheck
    Created on : Feb 10, 2016, 7:26:10 PM
    Author     : Harshit
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import = "pck.javaclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

javaclass obj=new javaclass();
//obj.clusn=(request.getParameter("txtuser"));
//obj.clpwd = (request.getParameter("txtpass"));
 ResultSet rs=obj.check();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
          a {
    color: hotpink;
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
.hidden {
    display: none;
}

</style>
    </head>
    <body>
        <h1>Login</h1>
        
        
         <Div>
                    <form name="flogin" action="sendmail.jsp" method="POST">
                        <table border="0"align="center">
                        
                            <tbody>
                                <tr>
                                    <td>UserName</td>
                                    <td><input type="text" name="txtuser" value="" size="50" /></td>
                                </tr>
                                <tr>
                                    <td>password</td>
                                    <td><input type="password" name="txtpass" value="" size="50" /></td>  
                                </tr>
                                <tr>
                                    <td> </td>   <td>
                            <!--<input type="submit" value="Sublit" name="butsubmit" />-->
                             <input type="reset" value="Clear" name="butclear" />
                  
                            <input type="button" value="Login" onclick="myFunction();"/>
                             
                           
                                                </td>
                                </tr>
                                <tr colspan="2">
                                  </td><a href="signup.jsp">   New User (Sign UP)</a></td>
                                    </tr>
                            </tbody>
                        </table>

                    </form>
                    </div>
        
        
        
        
        
        
        
        
           <script>
               if (typeof(Storage) !== "undefined") {
    // Store
    localStorage.setItem("lastname", "Smith");
    // Retrieve
   // document.getElementById("result").innerHTML = localStorage.getItem("lastname");
} else {
    document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
}




            function myFunction()
            {
                  var e = document.getElementById("mySelect");
           var x = document.getElementById("mySelect").length;
          //  var usn = obj.clusn;
           // var pwd= obj.clpwd;
          var usn=document.flogin.txtuser.value;
          var pwd =document.flogin.txtpass.value;
            var f = document.getElementById("pwdid");
           var i=0;
             var j=0;
             var usee;
             var pas;
            for (i = 0; i < x; i++)
             {
                  Usee = e.options[i].value;
                  pas = f.options[i].value;
          // document.getElementById("output").innerHTML = pas
       // document.getElementById("output").innerHTML = x+ e.options[i].value;
             
              if((usn == e.options[i].value) && (pas == pwd))
                   {
                       
                                       j=1;
                                       document.cookie=usn;
                   }
              }
if(j==1)
    {
    window.open("sendmail.jsp?lol=" + usn + "","_self");

    }
    else
        { 
  alert("Please Enter Valid Username And Password");
  window.open("index.jsp","_self");
       }
        
            }
            
            
        </script>    
        
        
        
        
        
        
        
            <!--         <table border="1px" class="hidden" > 
                <tr>
           
                <td>
                     user id :
                </td>
                <td>
                    pass:
                </td>
                
                </tr>
                <%
                   while(rs.next())
                {%>
     <tr>
                        
        

       <td><%=rs.getString("tbuname")%>
        </td>
        <td><%=rs.getString("tbpass")%>
        </td>
  </tr>                      
 
<% 
                            }
%>


-->



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

    </body>
</html>
