# module dependencies
require! <[ reflex ]>
global import require 'prelude-ls'

# state observers
require! <[
  ./observers/search
]>

# route components
require! <[
  ./routes/welcome
  ./routes/not-found
]>

initial-state =
  query: ''
  history: []
  loading: false

module.exports = reflex.application.create do
  get-initial-state: ->
    initial-state

  start: (app-state) ->
    search do
      app-state.get 'state.query'
      app-state.get 'state.results'
      app-state.get 'state.loading'

  routes: ->
    page = reflex.routes.page

    reflex.routes.define do
      page '/', welcome
      page '*', not-found
