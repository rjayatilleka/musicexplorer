Rx = require('./rx.lite.min.js'); window.Rx = Rx
key = require('./key.coffee');

$ = document.querySelector.bind document
count = $ '#count'

sub = Rx.Observable
  .fromEvent count, 'click'
  .map (e, i) -> i + 1
  .merge Rx.Observable.of(0)
  .forEach (i) -> count.innerText = i
