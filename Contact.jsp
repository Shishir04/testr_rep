<%-- 
    Document   : Contact
    Created on : Feb 10, 2016, 10:25:58 PM
    Author     : Harshit
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "pck.contact"%>
<!DOCTYPE html>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <style>
            .hidden{
                display:none;
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
/* Navi */
#nav {
    width: 800px;
    margin: 25px auto;
    overflow: hidden;
}
#nav ul {
    float: left;
    height: 25px;
    width: 800px;
    opacity: 0.95;
    border-radius: 5px;
    list-style-type: none;
    box-shadow: 0 250px 150px rgba(0,0,0,.2);
    margin: 0;
    padding: 0;
}
#nav ul li {
    float: left;
    height: 25px;
}
#nav ul li a {
    font: bold 21px/24px "Lato","Trebuchet MS", Arial, Helvetica, sans-serif;
    display: block;
    height: 25px;
    border-bottom: 5px solid #143157;
    background-color: #0f6fb2;
    background-image: -webkit-gradient(linear, left top, left bottom, from(rgb(15, 111, 178)), to(rgb(34, 65, 112)));
    background-image: -webkit-linear-gradient(top, rgb(15, 111, 178), rgb(34, 65, 112));
    background-image: -moz-linear-gradient(top, rgb(15, 111, 178), rgb(34, 65, 112));
    background-image: -o-linear-gradient(top, rgb(15, 111, 178), rgb(34, 65, 112));
    background-image: -ms-linear-gradient(top, rgb(15, 111, 178), rgb(34, 65, 112));
    background-image: linear-gradient(top, rgb(15, 111, 178), rgb(34, 65, 112));
    filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0,StartColorStr='#0f6fb2', EndColorStr='#224170');
    color: #fff;
    text-decoration: none;
    box-shadow: inset 0 1px 0 #0081bd,inset 0 2px 0 #0078b0,inset 0 3px 0 #0070a3, 0 0 10px rgba(0,0,0,0.2);
    box-sizing: border-box;
    transition: all .2s ease-in;
    -o-transition: all .2s ease-in;
    -moz-transition: all .2s ease-in;
    -webkit-transition: all .2s ease-in;
}
#nav ul li a { width: 160px }
#nav ul li:first-child a {
    -webkit-border-top-left-radius: 5px;
    -webkit-border-bottom-left-radius: 5px;
    -moz-border-radius-topleft: 5px;
    -moz-border-radius-bottomleft: 5px;
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
}
#nav ul li:last-child a {
    -webkit-border-top-right-radius: 5px;
    -webkit-border-bottom-right-radius: 5px;
    -moz-border-radius-topright: 5px;
    -moz-border-radius-bottomright: 5px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
}
#nav ul li a:hover {
    box-shadow: inset 0 1px 0 #0070a3,inset 0 0 30px 0 #142a4a;
    text-shadow: 0 1px 3px #143157;
    border-bottom: 5px solid #0e223d;
}
#nav ul li a:active,
#nav ul li a.active {
    border-bottom: 1px solid #0e223d;
    height: 25px;
    padding-top: 2px;
    box-shadow: inset 0 1px 0 #0070a3,inset 0 0 40px 0 #0d1b30;
}
#nav ul li a span {
    border-left: 1px solid #143157;
    border-right: 1px solid #1563a3;
    height: 100%;
    display: block;
    width: 100%;
    text-align: center;
    box-sizing: border-box;
}
#nav ul li:first-child a span { border-left: none }
#nav ul li:last-child a span { border-right: none }
.hidden {
    display: none;
}

</style>  
             

         <script>
             function addi()
             {
              document.getElementById("i2").style.display = "none";
              document.getElementById("but").value="Save";
             document.getElementById("i1").style.display = "none";
             document.getElementById("adnewgrp").style.display = "block";
           document.getElementById("r1").style.display = "none";
        document.getElementById("r2").style.display = "none";
        document.getElementById("contac").action = "csaved.jsp";  
    
    document.contact.chk.value="1";
         document.getElementById("cnam").disabled = false;
      
    }
             function manage()
             {
             document.getElementById("i2").style.display = "block";
             document.getElementById("but").value="Update";
             document.getElementById("i1").style.display = "block";
             document.getElementById("adnewgrp").style.display = "none";
        document.getElementById("r1").style.display = "none";
        document.getElementById("r2").style.display = "none";
        document.getElementById("contac").action = "UPDATE.jsp";   
        document.contact.chk.value="0";
             document.getElementById("cnam").disabled = true;
             <%   contact ob=new contact(); 
                 ResultSet rs=ob.getall();
                 
            %>
      

    }
    function addgrp()
    {
    
 document.getElementById("r1").style.display = "block";
        document.getElementById("r2").style.display = "block";
              document.getElementById("r3").style.display = "none";       
          
    }
    function savegr()
    {
         document.getElementById("r1").style.display = "none";
        document.getElementById("r2").style.display = "none";
        document.getElementById("r3").style.display = "block";
        
        var zz=document.getElementById("grpx").value;
        
         var z = document.getElementById("grpn");
         var option = document.createElement("option");
         option.text = zz;
         z.add(option);
          
      
            
        
    }
    
    function done()
    {
        document.getElementById("r1").style.display = "none";
        document.getElementById("r2").style.display = "none";
        document.getElementById("r3").style.display = "block";
        
    }
    function checkgrpnam()
    {
        
        
        
        
        
        
        
          var e = document.getElementById("grpn");
           var x = document.getElementById("grpn").length;
          //  var usn = obj.clusn;
           // var pwd= obj.clpwd;
          var usn=document.grpnamsave.groupname.value;
        
           
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
    
 alert("Please Select Another Group Name , this Group name has already taken");
 document.getElementById("grpx").value="";
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    function loaddata()
    {
        var e = document.getElementById("nam");
var strUser = e.options[e.selectedIndex].value;
document.getElementById("cnam").value = strUser;
      <%  
                 ResultSet rr=ob. getoneset();
                 
            %>
                     var strUser = e.options[e.selectedIndex].value;
                     var options= document.getElementById('c1').options;
    var nn= options.length;
        for (var ii= 0 ; ii<nn; ii++) {
    if (options[ii].value===strUser) {
     //   options[ii].selected= true;
        break;
        } }
   // alert(ii);
      // document.getElementById("grpn").selectedIndex = ii;          
             document.getElementById("c2").selectedIndex = ii; 
            var ez = document.getElementById("c2");
var p = ez.options[ez.selectedIndex].value;
   document.getElementById("cemail").value = p;
   
document.getElementById("c3").selectedIndex = ii;
 var ezz = document.getElementById("c3");
var pz = ezz.options[ez.selectedIndex].value;


  var optionss= document.getElementById('grpn').options;
    var nnn= optionss.length;
        for (var iii= 0 ; iii<nnn; iii++) {
    if (options[iii].value===pz) {
     //   options[ii].selected= true;
     document.getElementById("grpn").selectedIndex = iii;
        break;
        } }



          
    }
    function loadgrp()
    {
        <%  
                 ResultSet r=ob.getgrpnam();
                 
            %>
    }
             function validate()
             
             {
                 var y = document.forms["contact"]["txtcname"].value;
                 if (y == null || y == "") {
                 alert("Name must be filled out");
                 return false;}
                 var x = document.forms["contact"]["group"].value;
                 if (x == null || x == "") {
                 alert("Group name must be filled out");
                 return false;}
                  var z = document.forms["contact"]["txtcemail"].value;
                  if (z == null || z == "") {
                 alert("email Must be selected or Create A group First");
                 return false;
                  }
      <%
  contact obj=new contact();               

//obj.id=
obj.name =(request.getParameter("txtcname"));
obj.email =(request.getParameter("txtcemail"));
obj.group =(request.getParameter("group"));
                          
      %>        }
              
        </script>
      
    
    </head>
    <body onload="loadgrp();">
      
         <nav id="nav">	
	<ul>		
		<li>
                   
			<a href="sendmail.jsp"><span>Send Mail</span></a>
		</li>
		<li>
                    <a href="Contact.jsp"><span>Add Contact</span></a>
		</li>
		<li>
			<a href="group.jsp"><span>Contact-Info</span></a>
		</li>
		<li>
			<a href="sent_mail.jsp"><span>Sent Mails</span></a>
		</li>
		
                <li>
			<a href="index.jsp"><span>Logout</span></a>
		</li>
	</ul>
</nav> 

        <form name="contact" id='contac' action="csaved.jsp" method="POST" onsubmit="validate();" >
   
         
          <div>
              <input type="button" value="Add" name="add" onclick="addi();"/>
              <input type="button" value="Update" name="Manage" onclick="manage();"/>
            <table border="0" align="center">
               
                <tbody>
                    <tr class="hidden" id="i1">
                    <td>Contact_name</td>    
                    <td><select id="nam" name="con_name" onchange="loaddata()">
                           <%
                   while(rs.next())
                {%>

      <option><%=rs.getString("cname")%></option>

      <% 
                            }
%>
                        </select></td>    
                    </tr>
                    <tr class="hidden" id="i2">
                         <td></td>    
                         <td><input type="button" value="Select" name="con_select"  onclick="loaddata();"/><br/></td>    
                    </tr>
                    
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="txtcname" id='cnam' value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="text" name="txtcemail" id='cemail' value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td >Group</td>
                        <td><select id="grpn" name="group" lemgth="50">
                              
                                
                                
                                
                  <%
                   while(r.next())
                  {%>

                   <option><%=r.getString("gname")%></option>

                 <% 
                            }
                 %>



                            </select>
                       
                            <input type="button" id="adnewgrp" value="Add New Group" name="addnew" onclick="addgrp();" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            </td>
                            <td>
                               
                                
                                
                            </td>
                        
                    </tr>
                    <tr id="r3">
                        
                        <td>
                            <input type="text" class='hidden' id='ch' name="chk" value="1" size="5" />
                            <input type="text" class="hidden" name="coockie" id="myText" value="" size="50" /></td>
                        <td><input  type="reset" value="clear" name="con_clear" />
                           <input id="but" type="submit" value="Save" name="con_save"  />
                      
                        </td>
                    </tr>
                </tbody>
            </table>    
        </form>
  
        </div>
                 
               <div>
                                    <form name="grpnamsave" action="grpsaved.jsp" method="POST">
                                 
                                    <table>
                                        
                    <tr id="r1" class="hidden">
                         <td>Group Name</td>
                        <td><input type="text" id="grpx" name="groupname" value="" size="35" onblur="checkgrpnam();"/></td>
                        </tr>
                           <tr id="r2" class="hidden">
                        <td></td>
                        <td><input type="Submit" value="Save group name" name="savegrp" onclick="savegr();"/>
                        <input type="button" value="Do not Save" name="savegrp" onclick="done();"/>
                        </td>
                        </tr>
                         
                            
                                        </table>
                                       </form>
                                    </div>   
                 
       <script>
               
                var x= document.cookie;
                document.getElementById("myText").value = x;
                </script>
                
                
                
        
                
                
                
                
                
                
                
                <div class='hidden'>
                
            
                 <select id="c1" align="center" name="user1" >
<%
                   while(rr.next())
                {%>

      <option><%=rr.getString("cname")%></option>
      
    
 
      <% 
                            }
%>


 </select>
<%
    rr=ob.getoneset();
     
%>
 <select id="c2" align="center" name="user2"  >
<%
                   while(rr.next())
                {%>

      <option><%=rr.getString("email")%></option> 
      <% 
                            }
%>
 </select>
 <%
    rr=ob.getoneset();
     
%>
 <select id="c3" align="center" name="user2"  >
<%
                   while(rr.next())
                {%>

      <option><%=rr.getString("groupn")%></option> 
      <% 
                            }
%>
 </select>
                
                </div>
                
          <script> 
                  function fill()
                 {
         }
                
                  
          </script>
                
                
                
                
                
                
                
                
    </body>
     
</html>
