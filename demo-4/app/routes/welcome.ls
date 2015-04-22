require! {
  './base-route': BaseRoute
  arch
}

layout = arch.dom require '../components/layout'
list = arch.dom require '../components/list'
history = arch.dom require '../components/history'

d = arch.DOM

module.exports = class WelcomeRoute extends BaseRoute
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


