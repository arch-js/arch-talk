require! <[ arch ./base-route ]>
layout = arch.dom require '../components/layout'

d = arch.DOM

module.exports = class extends base-route
  display-name: 'not-found'
  get-title: -> super "Not Found"
  render: ->
    layout do
      d.h1 "Page Not Found"
