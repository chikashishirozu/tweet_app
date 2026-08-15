// app/javascript/application.js

import "@hotwired/turbo-rails"
// import "@rails/ujs"
import "controllers"
// import { Application } from "@hotwired/stimulus";
// import Rails from '@rails/ujs';
// import $ from 'jquery'; // jQueryをインポート

// Rails.start(); // Rails UJSの開始

// Stimulusの設定
// const application = Application.start();
application.debug = true;
window.Stimulus = application;

// export { application };


