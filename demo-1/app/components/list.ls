require! <[ arch ]>

d = arch.DOM

things =
  * "Hovercraft full of eels"
  * "Ex-parrot"
  * "Eggs, beans, bacon and spam"
  * "Knights who say Ni!"
  * "Flying circus"

matches = (search, item) -->
  search is '' or item.to-lower-case!.index-of(search.to-lower-case!) > -1

module.exports = class List extends React.Component
  ->
    @state = query: ''

  render: ->
    d.div do
      class-name: 'panel panel-default'

      d.div do
        class-name: 'panel-heading'
        d.form do
          on-submit: -> it.prevent-default!

          d.div do
            class-name: 'form-group'

            d.input do
              type: 'text'
              auto-complete: 'off'
              class-name: 'form-control'
              id: 'search-query'
              name: 'query'
              placeholder: 'Your search'
              value: @state.query
              on-change: ~> @set-state query: it.target.value

      d.div do
        class-name: 'panel-body'
        d.table do
          class-name: 'table table-striped'

          d.tbody do
            things
            |> filter matches @state.query
            |> map ->
              d.tr d.td it






