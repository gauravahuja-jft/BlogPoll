<html>
<head>
	<r:require module="custom"/>

	<r:require module="bootstrap"/>

%{--
	<meta name='layout' content='main'/>
--}%
	<title><g:message code="springSecurity.login.title"/></title>
	<r:layoutResources/>

</head>

<body id="loginbody">
<p class="container">

	<form class="form-signin" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'">
		<h2 class="form-signin-heading whitetext">Please sign in</h2>
		<p>
			<label for='username' class="sr-only"><g:message code="springSecurity.login.username.label"/>:</label>
			<input type='text' class='form-control' name='j_username' id='username' placeholder="Username" required autofocus/>
		</p>
		<p>
			<label for='password' class="sr-only"><g:message code="springSecurity.login.password.label"/>:</label>
			<input type='password' class='form-control' name='j_password' id='password' placeholder="Password" required autofocus/>
		</p>
		<p>
			<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
			<label for='remember_me' class="whitetext"><g:message code="springSecurity.login.remember.me.label"/></label>
		</p>

%{--
			<input type="submit" class="" id="submit" value="${message(code: "springSecurity.login.button")}"/>
--}%
<p>
		<g:submitButton name="submit" class="btn btn-lg btn-primary btn-block" id="submit" value='${message(code: "springSecurity.login.button")}'/>
</p>
<g:link controller="register" action="signup">Not a member yet? Click here to register</g:link>

</form>

</div> <!-- /container -->
<r:layoutResources/>

</body>
</html>
