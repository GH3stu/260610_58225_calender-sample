# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
# 以下の2行をファイルの末尾に手動で追記,$ importmap pin @fullcalendar/core @fullcalendar/daygridしてもエラーのため.....
pin "@fullcalendar/core", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/index.js"
pin "@fullcalendar/daygrid", to: "https://ga.jspm.io/npm:@fullcalendar/daygrid@6.1.9/index.js"
# Pin local calendar module so importmap resolves the bare specifier
pin "calendar", to: "/calendar.js"
# FullCalendar subpath pins (manually added because --download failed)
pin "@fullcalendar/core/index.js", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/index.js"
pin "@fullcalendar/core/internal.js", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/internal.js"
pin "@fullcalendar/core/preact.js", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/preact.js"
# Preact (FullCalendar dependency)
pin "preact", to: "https://ga.jspm.io/npm:preact@10.12.1/dist/preact.module.js"
pin "preact/compat", to: "https://ga.jspm.io/npm:preact@10.12.1/compat/dist/compat.module.js"
pin "preact/hooks", to: "https://ga.jspm.io/npm:preact@10.12.1/hooks/dist/hooks.module.js"
# FullCalendar locale and list plugin
pin "@fullcalendar/core/locales/ja", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/locales/ja.js"
pin "@fullcalendar/core/locales/ja.js", to: "https://ga.jspm.io/npm:@fullcalendar/core@6.1.9/locales/ja.js"
pin "@fullcalendar/list", to: "https://ga.jspm.io/npm:@fullcalendar/list@6.1.9/index.js"
