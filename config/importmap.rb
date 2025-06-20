# Pin npm packages by running ./bin/importmap

pin "application", preload: true

pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery" # @3.7.1
pin "@rails/ujs", to: "https://cdn.jsdelivr.net/npm/@rails/ujs@7.0.1/lib/assets/compiled/rails-ujs.js"

pin "@hotwired/turbo", to: "@hotwired--turbo.js" # @8.0.13
pin "@rails/actioncable/src", to: "@rails--actioncable--src.js" # @8.0.200
pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" # @8.0.16
