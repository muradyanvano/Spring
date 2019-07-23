<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Vano
  Date: 23.07.2019
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message  code="General.page" text="default"/></title>
</head>
<body>

<h1><spring:message  code="Welcome" text="default"/></h1>

<a href="/registration"><spring:message  code="Registration" text="default"/></a>

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
