#= require active_admin/base
#= require jquery.event.drag-2.2
#= require geocomplete
#= require chosen-jquery
#= require slick/slick.core
#= require slick/plugins/slick.cellrangedecorator
#= require slick/plugins/slick.cellrangeselector
#= require slick/plugins/slick.cellselectionmodel
#= require slick/slick.formatters
#= require slick/slick.editors
#= require slick/slick.grid

$ ->
  $('.address').geocomplete()
  $('select').chosen
    allow_single_deselect: true
    no_results_text: 'No results matched'
    width: '108px'
  return
