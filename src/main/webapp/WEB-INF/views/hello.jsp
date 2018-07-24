<%@page session="false"%>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring Security</title>

    <style type="text/css">
        #adminPage {
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>

<body>
	<h1>Welcome to Spring Security</h1>
	<h2>Title : ${title}</h2>	
	<h2>Message : ${message}</h2>	
	
	<div align="center">
        <h1>Spring Security Example</h1>
        <a id="adminPage" href="${pageContext.servletContext.contextPath}/admin">Go To Administrator Page</a>
    </div>
	
	
</body>
</html>