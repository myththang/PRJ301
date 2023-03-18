<%-- 
    Document   : Exam
    Created on : Mar 13, 2023, 8:42:03 PM
    Author     : myth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Page</title>
        <style>
            img {
                width:100%;
            }
            .info{
                font-family: Microsoft Sans Serif;
                color: blue;
                font-weight: bold
            }
        </style>
    </head>
    <body style="background-color: #f2f2f2;width: 1920;height: 950">
        <div style="display: flex;">
            <div >
                Machine:<span class="info" >DESKTOP-O52JKRV</span>
                <br>Server:<span class="info" >Eng_EOS_14032</span>
                <br>Duration:<span class="info">${Duration} minutes</span>
                <br>Q mark:<span class="info"></span>
            </div>
            <div>
                Student:<span class="info">${Student}</span>
                <br>Examcode:<span class="info">${ExamCode}</span>
                <br>Open Code:<input type="text" disabled=""><input type="submit" disabled="">
                <br>Total Mark:<span class="info" >${quiz.size()}</span>
                <br>Font:<select id="font">
                    <option value="Microsoft Sans Serif">Microsoft Sans Serif</option>
                    <option value="Arial">Arial</option>
                    <option value="Verdana">Verdana</option>
                    <option value="Times New Roman">Times New Roman</option>
                </select>
                Size:<select id="fontSize">
                    <option value="12px">12</option>
                    <option value="14px">14</option>
                    <option value="16px">16</option>
                    <option value="18px">18</option>
                </select>
            </div>
            <div>
                <img src="image.png" alt="VN" style="width:200px;height:115px" >
                <div id="countdown-timer"style="font-family: Microsoft Sans Serif;font-size: 50px;color: blue;font-weight: bold"></div>
            </div>
        </div>
        <div style="display: flex;justify-content: space-evenly">
            <div>
                <input type="radio" name="option" value="A">A
                <br><input type="radio" name="option" value="B">B
                <br><input type="radio" name="option" value="C">C
                <br><input type="radio" name="option" value="D">D
            </div>
            <div style="background-color: white; width: 900px; height: 500px;font-family: Microsoft Sans Serif">
                <span>A. ${quiz.get(Integer.parseInt(questionNumber)-1).getA()}</span>
                <br><span>B. ${quiz.get(Integer.parseInt(questionNumber)-1).getB()}</span>
                <br><span>C. ${quiz.get(Integer.parseInt(questionNumber)-1).getC()}</span>
                <br><span>D. ${quiz.get(Integer.parseInt(questionNumber)-1).getD()}</span>
            </div>
            <div style="width: 8px;cursor: col-resize;background-color: red;" class="resizer"></div>
            <div id="question" style="background-color: white; width: 500px; height: 500px;font-family: Microsoft Sans Serif">
                <span>${quiz.get(0).getQuestion()}</span>
            </div>
        </div>
        <div style="display: flex;">
            <form action="exam" method="POST">
                <c:forEach var="i" begin="1" end="${quiz.size()}">
                    <button name="questionNumber" value="${i}">${i}</button>
                </c:forEach>
            </form>
        </div>
        <script>
            var duration = ${Duration};
            var timeLeft = Number(duration) * 60;
            var timer = setInterval(function () {
                timeLeft--;
                var minutes = Math.floor(timeLeft / 60);
                var seconds = timeLeft % 60;
                if (seconds < 10) {
                    document.getElementById("countdown-timer").innerHTML = minutes + ": 0" + seconds;
                } else
                    document.getElementById("countdown-timer").innerHTML = minutes + ": " + seconds;
                if (timeLeft == 0) {
                    clearInterval(timer);
                    document.getElementById("my-form").submit();
                }
            }, 1000);
            var fontSelector = document.getElementById("font");
            var fontSizeSelector = document.getElementById("fontSize");


            fontSelector.addEventListener("change", function () {

                var selectedFont = fontSelector.value;


                question.style.fontFamily = selectedFont;
            });


            fontSizeSelector.addEventListener("change", function () {

                var selectedFontSize = fontSizeSelector.value;


                question.style.fontSize = selectedFontSize;
            });
        </script>
    </body>
</html>
