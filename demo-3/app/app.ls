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

module.exports = reflex.application.create do
  get-initial-state: ->
    initial-state

  start: (app-state) ->
    search app-state.get('state.query'), app-state.get('state.results')

  routes: ->
    page = reflex.routes.page

    reflex.routes.define do
      page '/', welcome
      page '*', not-found
