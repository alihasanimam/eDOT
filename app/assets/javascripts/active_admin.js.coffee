#= require active_admin/base
#= require geocomplete
#= require chosen-jquery

$ ->
  $('.address').geocomplete()
  $('select').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
  return
