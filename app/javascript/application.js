// app/javascript/application.js

import "@hotwired/turbo-rails"
import "controllers"
import { Application } from "@hotwired/stimulus";
import Rails from '@rails/ujs';
import $ from 'jquery'; // jQueryをインポート

Rails.start(); // Rails UJSの開始

// Stimulusの設定
const application = Application.start();
application.debug = false;
window.Stimulus = application;

export { application };


