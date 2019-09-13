<!doctype html>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="/assets/css/constants.css">
  <link rel="stylesheet" href="/assets/css/styles.css">
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body class="container">
  <h1>Detalle del profe</h1>
  % founded = False
  % for teacher in locals['teachers']:
    % if teacher['id'] == locals['id']:
      <label>Nombres</label>
      <label>{{teacher['names']}}</label>
      <br>
      <label>Apellidos</label>
      <label>{{teacher['last_names']}}</label>
      <br>
      <label>Imagen</label>
      <img src="{{teacher['img']}}" alt="Smiley face" height="42" width="42">
      <br>
      % founded = True
    % end
  % end
  % if founded == False:
    <label>Profesor no encontrado</label>
  % end
</body>
</html>