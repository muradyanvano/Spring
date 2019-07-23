<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Vano
  Date: 23.07.2019
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: black;
        }

        * {
            box-sizing: border-box;
        }

        /* Add padding to containers */
        .container {
            padding: 16px;
            background-color: white;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        input[type=text]:focus, input[type=password]:focus {
            background-color: #ddd;
            outline: none;
        }

        /* Overwrite default styles of hr */
        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for the submit button */
        .registerbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        .registerbtn:hover {
            opacity: 1;
        }

        /* Add a blue text color to links */
        a {
            color: dodgerblue;
        }

        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
            background-color: #f1f1f1;
            text-align: center;
        }
    </style>
</head>
<body>

<form:form modelAttribute="user" action="/userregistration">
    <div class="container">
        <h1><spring:message code="Registration" text="default"/></h1>
        <br>

        <spring:message code="Enter.your.name" var="placeholderName" />
        <form:label path="name" ><b><spring:message code="Name" text="default"/></b></form:label>
        <form:input path="name" type="text" placeholder='${placeholderName}' name="email" />
        <form:errors path="name" cssStyle="color: red"/><br><br>

        <spring:message code="Enter.your.surname" var="placeholderSurname" />
        <form:label path="surname" ><b><spring:message code="Surname" text="default"/></b></form:label>
        <form:input path="surname" type="text" placeholder='${placeholderSurname}' name="email" />
        <form:errors path="surname" cssStyle="color: red"/><br><br>


        <spring:message code="Enter.your.age" var="placeholderAge" />
        <form:label path="age" ><b><spring:message code="Age" text="default"/></b></form:label>
        <form:input path="age" type="text" placeholder='${placeholderAge}' name="email" />
        <form:errors path="age" cssStyle="color: red"/><br><br>

        <spring:message code="Enter,your,email" var="placeholderEmail" />
        <form:label path="email" ><b><spring:message code="Email" text="default"/></b></form:label>
        <form:input path="email" type="text" placeholder='${placeholderEmail}' name="email" />
        <form:errors path="email" cssStyle="color: red"/><br><br>

        <spring:message code="Enter.your.password" var="placeholderPassword" />
        <form:label path="password" ><b><spring:message code="Password" text="default"/></b></form:label>
        <form:input path="password" type="text" placeholder='${placeholderPassword}' name="email" />
        <form:errors path="password" cssStyle="color: red"/><br><br>




        <button type="submit" class="registerbtn"><spring:message code="Register" text="default"/></button>
    </div>

    <div class="container signin">
        <p><spring:message code="Already.have.an.account?" text="default"/> <a href="#"><spring:message code="Sign.in." text="default"/></a>.</p>
    </div>
</form:form>
<br><span> <spring:message code="lang.change" text="default"/></span>
<select id="locales">
    <option value=""></option>
    <option value="en"><spring:message code="lang.en" text="default"/></option>
    <option value="arm" ><spring:message code="lang.arm" text="default"/></option>
    <option value="ru" ><spring:message code="lang.ru" text="default"/></option>
</select>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#locales").change(function () {
            var selectedOption = $('#locales').val();
            if (selectedOption != ''){
                window.location.replace('?lang=' + selectedOption);
            }
        });
    });
</script>
</body>
</html>
