Rx = require('./lib/rx.lite.min.js'); window.Rx = Rx
React = require('./lib/react-0.12.2.min.js'); window.React = React
components = require('./components.coffee')
key = require('./key.coffee')

$ = document.querySelector.bind document
playerMount = $ '#player'

player = React.render React.createElement(components.Player), playerMount
