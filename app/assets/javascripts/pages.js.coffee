dolls = ['books', 1, 2, 3]

$ ->
  $('button').click ->
    $('td').first().text $('textarea').val()
    $('button, textarea').slideUp()