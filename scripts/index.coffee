Rx = require('./lib/rx.lite.min.js'); window.Rx = Rx
React = require('./lib/react-0.12.2.min.js'); window.React = React
components = require('./components.coffee')
key = require('./key.coffee')

$ = document.querySelector.bind document
mount = $ '#mount'

clicks = React.render(
  React.createElement(components.Clicks, null),
  mount
)

sub = Rx.Observable
  .fromEvent mount, 'click'
  .scan 0, (a) -> a + 1
  .map (i) -> clicks: i
  .subscribeOnNext((c) -> clicks.setState(c))

