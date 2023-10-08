# Pin npm packages by running ./bin/importmap

pin 'jquery', preload: true
pin 'bootstrap', preload: true
pin 'application', preload: true
pin 'social-share-button', preload: true
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.7-2/lib/assets/compiled/rails-ujs.js"

pin_all_from 'app/javascript/controllers', under: 'controllers'
