<%-- 
    Document   : sendmail
    Created on : Feb 10, 2016, 7:25:26 PM
    Author     : Harshit
--%>
<%@page import = "pck.javaclass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mail</title>
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
</style>  

    </head>
    <body>
        <script>
                document.getElementById("result").innerHTML = localStorage.getItem("lastname");
           
            </script>
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
        
        
        
        
          <form name="send" action="mail.jsp" method="POST" style="margin-top: -20px;">
            <br/>  <br/>  <br/>  
              <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" name="ti_subject" value="" size="38" /></td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td align="center"><textarea name="Msg" rows="10" cols="37">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Send" name="b_send" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
             
          
    </body>
</html>
