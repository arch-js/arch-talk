require! <[ reflex ]>

d = reflex.DOM

module.exports = class extends React.Component
  display-name: 'list'

  render: ->
    d.div do
      class-name: 'panel panel-default'

      d.div do
        class-name: 'panel-heading'

        d.h2 class-name: 'panel-title', "Search history"

      d.div do
        class-name: 'panel-body'
        d.table do
          class-name: 'table table-striped'

          d.tbody do
            @props.history.deref! |> map (query) ~>
              d.tr d.td do
                d.a do
                  href: ""
                  on-click: ~>
                    it.prevent-default!
                    @props.query.update -> query

                  query
