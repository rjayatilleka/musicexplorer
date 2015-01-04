React = require('../lib/react-0.12.2.min.js')

{p, div, img, h1, span} = React.DOM

emptyBar =
  paused: false
  song: '<song>'
  artist: '<artist>'

emptySong =
  id: '0123456789'
  title: 'Song'
  artist_name: 'Artist'
  song_hotttnesss: 1
  artist_discovery: 1
  artist_familiarity: 1
  song_type: [ 'trait 1', 'trait 2' ]
  tracks: []
  audio_summary:
    key: 8
    energy: 0.649337
    liveness: 0.099435
    tempo: 180
    speechiness: 0.040738
    acousticness: 0
    instrumentalness: 0
    mode: 1
    time_signature: 4
    duration: 217.64
    loudness: -5.769
    audio_md5: ''
    valence: 0.452067
    danceability: 1

Player = React.createClass
  getInitialState: ->
    bar: emptyBar
    choices: (emptySong for i in [0..3])
  render: -> (h1 {}, "Player, Key = #{@props.api_key}")

exports.Player = Player
