<%--@elvariable id="users" type="java.util.List"--%>
<%--@elvariable id="currentDate" type="murach.email.EmailListServlet"--%>
<%--@elvariable id="user" type="murach.business.User"--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet"
          href="styles/main.css"
          type="text/css"/>
</head>

<body>
<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>

<%--    <jsp:useBean id="user" scope="session" class="murach.business.User"/>--%>
<label>Email:</label>
<span>${user.email}</span><br>
<%--    <span><jsp:getProperty name="user" property="email"/></span><br>--%>
<label>First Name:</label>
<span>${user.firstName}</span><br>
<%--    <span><jsp:getProperty name="user" property="firstName"/></span><br>--%>
<label>Last Name:</label>
<span>${user.lastName}</span><br>
<%--    <span><jsp:getProperty name="user" property="lastName"/></span><br>--%>


<p>Your email address was entered at ${requestScope.currentDate}</p>

<p>The first email address on our list is ${sessionScope.users["0"].email}<br>
    The second email address on our list is ${sessionScope.users["1"].email}</p>

<p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

<form action=""
      method="get">
    <input type="hidden"
           name="action"
           value="join">
    <input type="submit"
           value="Return">
</form>

<p>Please email us with any questions you may have at ${initParam.custServEmail}</p>

</body>
</html>