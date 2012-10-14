$('#login-button').live 'click', (event)->
  event.preventDefault()
  $form = $('#form-log-in')
  @email = $form.find("input[name='email']").val()
  @password = $form.find("input[name='password']").val()
  $.ajax
    type: "POST"
    url: "http://did-store.herokuapp.com/users/sign_in.json"
    dataType: "json"
    data: { user: { email: @email, password: @password } }
    success: (data) ->
      $.mobile.changePage('#dashboard')
    error: (data) ->
      console.log "error"

# $('#signup-button').live 'click', (event)->
#   event.preventDefault()
#   $form = $('#form-log-in')
#   @email = $form.find("input[name='email']").val()
#   @password = $form.find("input[name='password']").val()
#   $.ajax
#     type: "POST"
#     url: "http://did-store.herokuapp.com/users/sign_up.json"
#     dataType: "json"
#     data: { user: { email: @email, password: @password } }
#     success: (data) ->
#       $.mobile.changePage('#dashboard')
#     error: (data) ->
#       console.log "error"
