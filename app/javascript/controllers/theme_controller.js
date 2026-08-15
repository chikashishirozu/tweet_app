import { Controller } from "@hotwired/stimulus"

// app/javascript/controllers/theme_controller.js
// 使い方: <div data-controller="theme"> でラップし、
// ボタンに data-action="click->theme#setNormal" 等を付ける
export default class extends Controller {
  static targets = ["button"]

  connect() {
    // localStorageに保存されているテーマを復元（なければ normal）
    const saved = localStorage.getItem("theme") || "normal"
    this.applyTheme(saved)
    console.log("Theme controller connected")  
  }

  setNormal(event) {
    this.applyTheme("normal")
    console.log("normal")
  }

  setGray(event) {
    this.applyTheme("gray")
    console.log("gray")
  }

  setDark(event) {
    this.applyTheme("dark")
    console.log("dark")
  }

  applyTheme(theme) {
    document.documentElement.setAttribute("data-theme", theme)
    localStorage.setItem("theme", theme)
    this.updateActiveButton(theme)
  }

  updateActiveButton(theme) {
    if (!this.hasButtonTarget) return

    this.buttonTargets.forEach((btn) => {
      btn.classList.toggle("is-active", btn.dataset.themeValue === theme)
    })
  }
}
