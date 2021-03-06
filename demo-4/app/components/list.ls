require! <[ arch ]>

d = arch.DOM

module.exports = class List extends React.Component
  ->
    @state = query: null

  render: ->
    d.div class-name: 'panel panel-default',
      d.div do
        class-name: 'panel-heading'
        d.form do
          # FIXME
          action: '/'
          method: 'post'
          on-submit: (e) ~>
            e.prevent-default!
            query = @state.query

            @set-state query: null
            @props.query.update -> query
            @props.history.update -> it ++ [query]
            @props.loading.update -> true

          d.div do
            class-name: 'form-group'

            d.input do
              type: 'text'
              auto-complete: 'off'
              class-name: 'form-control'
              id: 'search-query'
              name: 'query'
              placeholder: 'Your search'
              value: if @state.query isnt null then @state.query else @props.query.deref!
              on-change: ~> @set-state query: it.target.value

      d.div do
        class-name: 'panel-body'
        if @props.loading.deref!
          d.p 'Loading...'
        else
          d.table do
            class-name: 'table table-striped'

            d.tbody do
              @props.results |> map ->
                d.tr do
                  d.td d.img do
                    height: 50
                    width: 50
                    src: it.get('avatar').deref!
                  d.td it.get('user').deref!
