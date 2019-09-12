<!doctype html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="/assets/css/constants.css">
  <link rel="stylesheet" href="/assets/css/styles.css">
  <link rel="stylesheet" href="/assets/css/login.css">
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
    <form class="form-signin" action="/login" method="post">
  <!--
  <a href="/">
    <img src="<%= constants.static_url %>assets/img/logo.png" height="130" width="240" class="mb-4 brand" alt="Logo-Login">
  </a>
  -->
  <h1 class="h3 mb-3 font-weight-normal">Bienvenido</h1>
  <input type="hidden" name="csrf" value="secret">
  <span class="extraData"></span>
  <!--USER -->
  <label for="user" class="sr-only"></label>
  <input type="text" id="user" class="form-control" placeholder="Usuario" required="" autofocus="" name="user">
  <!--PASS -->
  <label for="inputPassword" class="sr-only">Contraseña</label>
  <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required="" name="pass">
  <!--MESSAGE-->
  <p class="{{locals['message_status']}} message" style="margin-top:10px;" id="login-message">{{locals['message']}}</p>
  <!--BUTTON -->
  <button class="btn btn-lg btn-primary btn-block" type="submit">
    Ingresar
  </button>
  <!--FooTER LOGIN NAV -->
  <div class="link-login">
    <a class="" href="/login/sign_in">
      Registrarse
    </a>
    <a id="forgotpassword" class=" pull-right" href="/login/reset_password">
      Recuperar Contraseña
    </a>
  </div>
  <p class="mt-3 mb-1 text-muted">Powered By <a href="http://softweb.pe/"> Softtware Web Perú</a> © 2017-2018</p>
</form>
</body>
</html>