<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login & Signup Form</title>
    <link rel="stylesheet" href="<c:url value='../assets/style.css' />" />
</head>
<body>

<c:if test="${not empty error}">
    <div class="alert alert-danger">
        <c:out value="${error}" />
    </div>
</c:if>
<c:if test="${not empty success}">
    <div class="alert alert-success">
        <c:out value="${success}" />
    </div>
</c:if>

<section class="wrapper active">
    <div class="form signup">
        <header>Signup</header>
        <form action="/auth/logup.do" method="post">
            <div class="flex">
                <label>
                    <input type="text" name="firstname" placeholder="First name" required />
                </label>
                <label>
                    <input type="text" name="lastname" placeholder="Last name" required />
                </label>
            </div>
            <label>
                <input type="text" name="email" placeholder="Email address" class="w-full" required />
            </label>
            <label>
                <input type="password" name="password" placeholder="Password" class="w-full" required />
            </label>
            <div class="checkbox">
                <input type="checkbox" id="signupCheck" />
                <label for="signupCheck">I accept all terms & conditions</label>
            </div>
            <input type="submit" value="Signup" />
        </form>
    </div>

    <div class="form login">
        <header>Login</header>
        <form action="/auth/login.do" method="post">
            <label>
                <input type="text" name="email" placeholder="Email address" class="w-full" required />
            </label>
            <label>
                <input type="password" name="password" placeholder="Password" class="w-full" required />
            </label>
            <a href="#">Forgot password?</a>
            <input type="submit" value="Login" />
        </form>
    </div>

    <script>
        const wrapper = document.querySelector(".wrapper"),
            signupHeader = document.querySelector(".signup header"),
            loginHeader = document.querySelector(".login header");

        loginHeader.addEventListener("click", () => {
            wrapper.classList.add("active");
        });
        signupHeader.addEventListener("click", () => {
            wrapper.classList.remove("active");
        });
    </script>
</section>
</body>
</html>
