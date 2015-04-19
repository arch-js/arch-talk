require! <[ reflex ]>

d = reflex.DOM

module.exports = class
  display-name: 'layout'

  render: ->
    d.div do
      class-name: 'wrapper container'

      @props.children
