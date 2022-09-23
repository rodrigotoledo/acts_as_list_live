# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin 'trix'
pin '@rails/actiontext', to: 'actiontext.js'
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin "stimulus-sortable", to: "https://ga.jspm.io/npm:stimulus-sortable@3.2.0/dist/stimulus-sortable.es.js"
