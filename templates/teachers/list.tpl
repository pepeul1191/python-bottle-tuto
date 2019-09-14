% include('templates/partials/blank_header.tpl')
<div class="container">
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
</div>
% include('templates/partials/blank_footer.tpl')