$("#login-button").live 'click', (event) ->
  event.preventDefault()
  $form = $(this)
  email = $form.find("input[name=\"email\"]").val()
  password = $form.find("input[name=\"password\"]").val()
  url = $form.attr("action")
  $.ajax
    type: "POST"
    url: "http://did-store.herokuapp.com//users/sign_in.json?email=foo@bar.com&password=123456"
    dataType: "jsonp"
    success: (data) ->
      console.log "success"
      console.log data

    error: (data) ->
      console.log "error"
      console.log data
