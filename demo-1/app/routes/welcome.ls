require! <[ reflex ./base-route ]>

layout = reflex.dom require '../components/layout'
list = reflex.dom require '../components/list'

d = reflex.DOM

module.exports = class extends base-route
  display-name: 'welcome-page'
  get-title: -> super "Welcome!"
  render: ->
    layout do
      d.h1 "Searchable list demo"

      list!


