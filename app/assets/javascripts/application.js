// app/javascripts/application.js

import { Turbo } from "@hotwired/turbo-rails";
import { Application } from "@hotwired/stimulus";
import Rails from '@rails/ujs'; // 正しいimport方法
import $ from 'jquery'; // jQueryをインポート

Rails.start(); // Rails UJSの開始

// CSRFトークンの設定
const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
$.ajaxSetup({
  headers: {
    'X-CSRF-Token': token
  }
});

// Stimulusの設定
const application = Application.start();
application.debug = false;
window.Stimulus = application;

export { application };

