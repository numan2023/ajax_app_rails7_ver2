# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "memo", to: "memo.js"

# 同ファイルはJavaScriptモジュールを管理するために導入された新しい機能の一部。
# 同ファイルを使用することで、Webpackerなどのビルドツールを使用せずに、アプリ内でモジュールの読み込みを管理できるようになる。