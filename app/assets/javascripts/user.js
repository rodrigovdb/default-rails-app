function handleChangePassword(){
  $('#alterar-senha').slideToggle();

  field = $('#change_password_flag');
  field.val(field.val() == 'true' ? 'false' : 'true');
}

