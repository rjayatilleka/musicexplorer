Rx = require('./rx.lite.min.js'); window.Rx = Rx

$ = document.querySelector.bind(document);

count = $('#count')

sub = Rx.Observable
  .fromEvent($('h1'), 'click')
  .map((e, i) -> i + 1)
  .merge(Rx.Observable.of(0))
  .doOnNext((i) -> console.log i)
  .forEach((i) -> count.innerText = i)
