// app/javascript/packs/application.js
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

//= require rails-ujs
//= require turbolinks
//= require_tree .

import "@hotwired/turbo-rails"
import "controllers"

import Rails from '@rails/ujs';
import $ from 'jquery'; // jQueryをインポート
import 'bootstrap';
import '../stylesheets/application';

Rails.start();
