$ ->

  $(document).ready ->

    $('textarea').each ->
      CodeMirror.fromTextArea @,
        lineNumbers: true
        lineWrapping: true
        mode: "text/x-csrc"
        vimMode: true
        showCursorWhenSelecting: true
        indentWithTabs: true
        cursorBlinkRate: 0
