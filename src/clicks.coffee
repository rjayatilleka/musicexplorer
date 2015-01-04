Rx = require('./lib/rx.lite.min.js'); window.Rx = Rx
React = require('./lib/react-0.12.2.min.js'); window.React = React
Counter = require('./clicks/counter.coffee')

$ = document.querySelector.bind document
mount = $ '#mount'

counter = React.render React.createElement(Counter.Counter), mount

sub = Rx.Observable
  .fromEvent mount, 'click'
  .scan 0, (a) -> a + 1
  .map (i) -> clicks: i
  .subscribeOnNext((c) -> counter.setState(c))
