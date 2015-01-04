React = require('./lib/react-0.12.2.min.js')

{p} = React.DOM

Clicks = React.createClass
  getInitialState: -> clicks: 0
  render: -> (p {}, "#{@state.clicks} clicks")

exports.Clicks = Clicks
