require! <[ arch ./base-route ]>

layout = arch.dom require '../components/layout'
list = arch.dom require '../components/list'

d = arch.DOM

module.exports = class extends base-route
  display-name: 'welcome-page'
  get-title: -> super "Welcome!"
  render: ->
    layout do
      d.h1 "Searchable list"

      list!


