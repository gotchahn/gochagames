# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(document).on 'ajax:success', '#trophies_filter', (e, data, status, xhr) ->
    alert(data)
    $('.js_trophies_list').html(data)

  $(document).on 'ajax:error', '#trophies_filter', (e, xhr, status, error) ->
    alert(xhr.responseText)
