% include('templates/partials/blank_header.tpl')
<div class="container">
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
</div>
% include('templates/partials/blank_footer.tpl')