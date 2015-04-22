require! <[ arch ]>

d = arch.DOM

module.exports = class Layout extends React.Component
  display-name: 'layout'

  render: ->
    d.div do
      class-name: 'wrapper container'

      @props.children
