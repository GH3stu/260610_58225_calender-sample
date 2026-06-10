import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import listPlugin from '@fullcalendar/list';
import jaLocale from '@fullcalendar/core/locales/ja.js'; // 日本語ロケール定義をインポート

document.addEventListener('turbo:load', function() {
  const calendarEl = document.getElementById('calendar');
  if (!calendarEl) return;

  const calendar = new Calendar(calendarEl, {
    plugins: [dayGridPlugin, listPlugin],
    initialView: window.innerWidth < 992 ? 'listMonth' : 'dayGridMonth',
    locale: 'ja',
    locales: [jaLocale], // ロケール定義を登録
    events: '/events',
    // ウィンドウサイズが変わった瞬間に検知させる設定
    windowResize: function(arg) {
      if (window.innerWidth < 992) {
        calendar.changeView('listMonth');
      } else {
        calendar.changeView('dayGridMonth');
      }
    }
  });

  calendar.render();
});