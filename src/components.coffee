React = require('./lib/react-0.12.2.min.js')

{p} = React.DOM

Clicks = React.createClass
  getInitialState: -> clicks: 0
  render: -> (p {}, "#{@state.clicks} clicks")

Player = React.createClass
  getInitialState: ->
    bar =
      paused: false
      song: '<song>'
      artist: '<artist>'

    panel =
      song: '<song>'
      artist:
        name: '<artist>'
        discovery: 1
      hotness: 1
      familiarity: 1
      traits: ['<Trait 1>', '<Trait 2>']
      dancer:
        danceability: 1
        tempo: 180
      keySig:
        key: 'C'
        mode: 1
      acousticness: 1

    {
      bar: bar
      choices: (panel for i in [0..3])
    }
  render: -> (p {}, "Player")


exports.Clicks = Clicks
