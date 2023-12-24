<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lab 10 a</title>
</head>
<body>
    <%
    bgcolor = Request.QueryString("BackgroundColor")
    Response.Write("<body class='contain' style='background-color: " & bgcolor & "'>")
    last_visit = Request.Cookies("last_time")
        if last_visit = "" then
            Response.Write("<p class='h2'>Welcome! It is your first Visit.</p>")
            Response.Cookies("last_time") = Now
        else
            Response.Write("<p class='h2'>The last visit of you on this page was on: " & last_visit & "</p>")
            Response.Cookies("last_time") = Now
        end if
        Response.Write("</body>")
    %>
    <style>
        h2{
            font-size: 50px;
            color : green;
        }
    </style>
</body>
</html>