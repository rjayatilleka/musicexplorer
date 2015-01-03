$ = document.querySelector.bind(document);
$$ = document.querySelectorAll.bind(document);

body = $('body');
body.innerHTML += '<p>From CoffeeScript, with Watchify</p>';
