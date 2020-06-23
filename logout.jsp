
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edufect</title>
        <link rel="stylesheet" href="css.css"/>
    </head>
    <body>
        <%
             session.removeAttribute("username");
            %>
        <div id="course-table">
        <ul>
            <li class="active"><a href="home.jsp">Login Again</a></li>
        </ul>
        </div>
    <center><h1>You are not logged in. Please Login again</h1></center>
    </body>
</html>
