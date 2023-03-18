<%-- 
    Document   : login
    Created on : Mar 5, 2023, 12:02:15 PM
    Author     : myth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>EOS Login Form</title>
    </head>
    <body > 
        <div style=" box-sizing: border-box;
             border: 1px solid black;
             width: 440px;
             height: 320px; background-color: rgb(240, 240, 240);margin: auto">
            <div style="text-align: center">
                <h2 style="color: red;font-size: medium">You cannot take the exam if EOS runs under a virtual machine</h2>
            </div>

            <form action="login" method="post">
                <div style="text-align: right; margin: 0 50px 20px 50px">
                    Exam Code:<input style="width: 220px;margin: 0 5px" type="text" id="examcode" name="examcode" required><br><br>
                    Username:<input style="width: 220px;margin: 0 5px" type="text" id="username" name="username" required><br><br>
                    Password:<input style="width: 220px;margin: 0 5px" type="password" id="password" name="password" required><br><br>
                    Domain:<input style="width: 220px;margin: 0 5px" type="text" disabled="" value="FU.EDU.VN" >
                </div>
                <div style="text-align: center;margin-left: 60px">
                    <input style="padding: 0px 20px;margin-right: 40px;border: 2px solid blue;" type="submit" value="Login">
                    <button style="padding: 0px 20px" type="button" onclick="exit()">Exit</button>
                    <br><a href="sound.jsp" target="_blank">Check sound(7s)</a>
                </div>
            </form>
            <c:if test="${not empty error}">
            <p style="color: red;">${error}</p>
            </c:if>
            <div style="text-align: center">
                <h3 style="color: blue;font-size: medium;text-align: center">Register the exam may take time, please wait</h3>
            </div>
        </div>
        <script>
            function exit() {
                window.close();
            }
        </script>
    </body>
</html>


