require! {
  './base-route': BaseRoute
  arch
}

layout = arch.dom require '../components/layout'
list = arch.dom require '../components/list'

d = arch.DOM

module.exports = class WelcomeRoute extends BaseRoute
  get-title: -> super "Welcome!"
  render: ->
    layout do
      d.h1 "Searchable list"

      list!


