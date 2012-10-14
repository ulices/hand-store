$('#login-button').live 'click', (event)->
  event.preventDefault()
  $form = $('#form-log-in')
  @email = $form.find("input[name='email']").val()
  @password = $form.find("input[name='password']").val()
  $.ajax
    type: "POST"
    url: "http://192.168.1.104:3000/users/sign_in.json?"
    dataType: "json"
    data: { user: { email: @email, password: @password } }
    success: (data) ->
      $.mobile.changePage('#dashboard')
    error: (data) ->
      console.log "error"
