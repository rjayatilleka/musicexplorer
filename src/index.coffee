Rx = require('./lib/rx.lite.min.js'); window.Rx = Rx
React = require('./lib/react-0.12.2.min.js'); window.React = React
key = require('./index/key.coffee')

components = Player: require('./index/player.coffee').Player

$ = document.querySelector.bind document
playerMount = $ '#player'

player = React.render(
  React.createElement components.Player, api_key: key
  playerMount
)
