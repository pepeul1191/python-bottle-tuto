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
  <h1>Lista de Profesores</h1>
  <table class="table">
    <thead>
      <th>Nombres</th>
      <th>Apellidos</th>
      <th>Imagen</th>
      <th>Operaciones</th>
    </thead>
    <tbody>
      % for teacher in locals['teachers']:
      <tr>
        <td>{{teacher['names']}}</td>
        <td>{{teacher['last_names']}}</td>
        <td>
          <img src="{{teacher['img']}}" alt="Smiley face" height="42" width="42"> 
        </td>
        <td>
          <a href="/teacher/get/{{teacher['id']}}">
            Ver Detalle
          </a>
        </td>
      </tr>
      % end
    </tbody>
  </table>
</body>
</html>