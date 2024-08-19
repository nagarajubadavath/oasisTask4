<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Quiz</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            font-family: Arial, sans-serif;
        }
        .outer {
            max-width: 600px;
            width: 100%;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        .timer {
            font-size: 20px;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .question {
            margin-bottom: 15px;
        }
    </style>
    <script>
        window.onload=function(){
            var timeleft=60;
            var timerElement=document.getElementById("timer");
            var interval=setInterval(function(){
                if(timeleft<=0){
                    clearInterval(interval);
                    document.getElementById("quizForm").submit();
                }else{
                    timerElement.innerHTML=timeleft+"seconds remaining";
                    timeleft--;
                }
            },1000);
        };
    </script>
</head>
<body>
    <div class="outer">
        <div class="timer" id="timer"></div>
        <form id="quizForm" action="submit_quiz.jsp" method="POST" autocomplete="off">
            <div class="question">
                <p>1. What is the capital of France?</p>
                <label><input type="radio" name="q1" value="Berlin"> Berlin</label><br>
                <label><input type="radio" name="q1" value="Madrid"> Madrid</label><br>
                <label><input type="radio" name="q1" value="Paris"> Paris</label><br>
                <label><input type="radio" name="q1" value="Rome"> Rome</label><br>
            </div>
            <div class="question">
                <p>2. Which programming language is primarily used for Android app development?</p>
                <label><input type="radio" name="q2" value="Python"> Python</label><br>
                <label><input type="radio" name="q2" value="Swift"> Swift</label><br>
                <label><input type="radio" name="q2" value="Java"> Java</label><br>
                <label><input type="radio" name="q2" value="Ruby"> Ruby</label><br>
            </div>
            <div class="question">
                <p>3. What is the chemical symbol for the element Gold?</p>
                <label><input type="radio" name="q3" value="Au"> Au</label><br>
                <label><input type="radio" name="q3" value="Ag"> Ag</label><br>
                <label><input type="radio" name="q3" value="Gd"> Gd</label><br>
                <label><input type="radio" name="q3" value="Go"> Go</label><br>
            </div>
            <div class="question">
                <p>4. Who wrote the play "Romeo and Juliet"?</p>
                <label><input type="radio" name="q4" value="Charles Dickens"> Charles Dickens</label><br>
                <label><input type="radio" name="q4" value="William Shakespeare"> William Shakespeare</label><br>
                <label><input type="radio" name="q4" value="George Orwell"> George Orwell</label><br>
                <label><input type="radio" name="q4" value="Mark Twain"> Mark Twain</label><br>
            </div>
            <div class="question">
                <p>5. What is the largest planet in our Solar System?</p>
                <label><input type="radio" name="q5" value="Earth"> Earth</label><br>
                <label><input type="radio" name="q5" value="Mars"> Mars</label><br>
                <label><input type="radio" name="q5" value="Jupiter"> Jupiter</label><br>
                <label><input type="radio" name="q5" value="Venus"> Venus</label><br>
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
