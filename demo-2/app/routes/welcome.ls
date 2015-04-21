require! <[ arch ./base-route ]>

layout = arch.dom require '../components/layout'
list = arch.dom require '../components/list'
history = arch.dom require '../components/history'

d = arch.DOM

module.exports = class extends base-route
  display-name: 'welcome-page'
  get-title: -> super "Welcome!"
  render: ->
    layout do
      d.h1 "Searchable list"

      d.div do
        class-name: 'row'

        d.div do
          class-name: 'col-md-6'
          list do
            query: @props.app-state.get \state.query
            history: @props.app-state.get \state.history

        d.div do
          class-name: 'col-md-6'
          history do
            query: @props.app-state.get \state.query
            history: @props.app-state.get \state.history


