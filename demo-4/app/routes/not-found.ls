require! <[ reflex ./base-route ]>
layout = reflex.dom require '../components/layout'

d = reflex.DOM

module.exports = class extends base-route
  display-name: 'not-found'
  get-title: -> super "Not Found"
  render: ->
    layout do
      d.h1 "Page Not Found"
