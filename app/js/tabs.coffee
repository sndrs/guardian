$ = require('jquery')

module.exports = class Tabs

  constructor: ->
    @$el = $('#latest-news').addClass('tabbed')
    @$tabs = @$el.find('.tab')
    @$el.find('.tab-header').on 'click', @selectTab

  selectTab: (e) =>
    @$tabs.removeClass 'selected'
    $selectedTab = $(e.target).closest('.tab')
    $selectedTab.addClass 'selected'

    # no permission to consume api?
    console.log "load from #{$selectedTab.data('endpoint')}"
    $.getJSON($selectedTab.data('endpoint'), {
      "api-key": "4ur46kq4sf2588bpzpeapt5s"
    })
