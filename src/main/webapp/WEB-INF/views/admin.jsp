<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring Security</title>

    <style type="text/css">
        #titleId {           
            color: red;
            font-size: 34px;
            margin: 36px 0px 15px 0px;
        }

        #messageId {
            font-size: 24px;
            margin: 15px 0px 15px 0px;
        }       
        
        #welcomeMsgId {
            font-size: 20px;
            color: green;
        }

        #welcomeTextId {
            text-transform: capitalize;
        }

        #logoutLink {
            text-decoration: none;
            cursor: pointer;
        }
    </style> 	
</head>


<body>
    <div id="welcomeMessage" align="center">
        <div id="titleId" class="">${title}</div>
        <div id="messageId" class="">${message}</div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <div id="welcomeMsgId">
                <span id="welcomeTextId">Welcome: ${pageContext.request.userPrincipal.name}</span> | <span id="logoutId"><a id="logoutLink" href="${pageContext.servletContext.contextPath}/logout">Logout</a></span>
            </div>
        </c:if>
    </div>

</body>
</html>