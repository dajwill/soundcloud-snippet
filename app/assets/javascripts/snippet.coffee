$ ->
  $('.play.button').click ->
    streamUrl = $(@).data('stream-url')
    id = $(@).data('id')
    $(".ui.basic.modal##{id}")
      .modal('show')
    ;
    audio = document.createElement("audio");
    audio.src = "#{streamUrl}?client_id=7889523d56cfc9d586bc1503d9d23baa";

    audio.addEventListener 'canplaythrough', (->
      audio.play()
      snippet = setTimeout (->
        audio.pause()
        audio.remove()
        $(".ui.basic.modal")
          .modal('hide')
        ;
        return
      ), 10000
      return
    ), false

    $('.ui.red.basic.inverted.button').click ->
      audio.pause()
      audio.remove()
      $(@).closest('.ui.modal')
        .modal('hide')
      ;
      # clearTimeout(snippet)
