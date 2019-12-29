<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<htmml>
<body onload='document.loginForm.username.focus();'>

    <h1>Spring Security Login Form (Database + Hibernate Authentication)</h1>

    <div id="login-box">

        <h3>Login with Username and Password</h3>

        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        <c:if test="${not empty msg}">
            <div class="msg">${msg}</div>
        </c:if>

        <form name='loginForm'
            action="<c:url value='/static/j_spring_security_check' />" method='POST'>

            <table>
                <tr>
                    <td>User:</td>
                    <td><input type='text' name='username'></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='password' /></td>
                </tr>
                <tr>
                    <td colspan='2'><input name="submit" type="submit"
                        value="submit" /></td>
                </tr>
            </table>

            <input type="hidden" name="${_csrf.parameterName}"
                value="${_csrf.token}" />

        </form>
    </div>
    </body>
    </htmml>