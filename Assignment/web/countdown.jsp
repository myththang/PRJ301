<%-- 
    Document   : test
    Created on : Mar 5, 2023, 3:06:58 PM
    Author     : myth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="my-form">
            <!-- Your form fields go here -->
            <button type="submit">Submit</button>
        </form>

        <div id="countdown-timer"style="font-size: 32px;
                color: red;"></div>
        <div id="time-display" ></div>

        <script>
            var timeLeft = 60; // set the number of seconds for the countdown
            var timer = setInterval(function () {
                timeLeft--;
                var minutes = Math.floor(timeLeft / 60);
                var seconds = timeLeft % 60;
                document.getElementById("countdown-timer").innerHTML = minutes + ": " + seconds;
                if (timeLeft == 0) {
                    clearInterval(timer);
                    document.getElementById("my-form").submit(); // submit the form when time is up
                }
            }, 1000);
        </script>



    </body>
</html>
