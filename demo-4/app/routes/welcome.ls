require! <[ reflex ./base-route ]>

layout = reflex.dom require '../components/layout'
list = reflex.dom require '../components/list'
history = reflex.dom require '../components/history'

d = reflex.DOM

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
            query: @props.app-state.get 'state.query'
            history: @props.app-state.get 'state.history'
            results: @props.app-state.get 'state.results'
            loading: @props.app-state.get 'state.loading'

        d.div do
          class-name: 'col-md-6'
          history do
            query: @props.app-state.get 'state.query'
            history: @props.app-state.get 'state.history'
            loading: @props.app-state.get 'state.loading'


