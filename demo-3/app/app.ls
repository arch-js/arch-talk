# module dependencies
require! <[ arch ]>
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

module.exports = arch.application.create do
  get-initial-state: ->
    initial-state

  start: (app-state) ->
    search app-state.get('state.query'), app-state.get('state.results')

  routes: ->
    page = arch.routes.page

    arch.routes.define do
      page '/', welcome
      page '*', not-found
