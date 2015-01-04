React = require('../lib/react-0.12.2.min.js')

{p} = React.DOM

Counter = React.createClass
  getInitialState: -> clicks: 0
  render: -> (p {}, "#{@state.clicks} clicks")

exports.Counter = Counter
