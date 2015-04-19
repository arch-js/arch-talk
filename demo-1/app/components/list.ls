require! <[ reflex ]>

d = reflex.DOM

things =
  * "Hovercraft full of eels"
  * "Ex-parrot"
  * "Eggs, beans, bacon and spam"
  * "Flying circus"

module.exports = class
  display-name: 'list'

  render: ->
    d.div do
      class-name: 'panel panel-default'

      d.div do
        class-name: 'panel-heading'
        d.form do
          action: '/'
          method: 'post'
          class-name: 'form-inline'

          d.div do
            class-name: 'form-group'

            d.label do
              class-name: 'sr-only'
              for: 'search-query'

              "Your search"

            d.input do
              type: 'text'
              class-name: 'form-control'
              id: 'search-query'
              size: 60
              placeholder: 'Your search'

          " "
          d.button do
            type: 'submit'
            class-name: 'btn btn-primary'

            "Search"

      d.div do
        class-name: 'panel-body'
        d.table do
          class-name: 'table table-striped'

          things |> map ->
            d.tr d.td it






