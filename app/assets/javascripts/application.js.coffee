#= require jquery
#= require jquery_ujs

$ ->

  $(document).ready ->

    $('#github img').bind 'mouseover', ->
      $(@).attr('src', '/assets/icons/github_dark.png')

    $('#github img').bind 'mouseout', ->
      $(@).attr('src', '/assets/icons/github_light.png')
