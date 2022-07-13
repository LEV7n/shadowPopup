options = {
  shadowParent: document.querySelector('#only-android'),
  stylesheets: [
    './css/popup.css',
    '.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'
  ],
  title: '<h1>Google is a search</h1>',
  content: '<p>Use it anywhere</p>',
  buttons: {
    disagree: {
      text: 'Not now',
      attributes: {
        class: 'btn-secondary'
      },
      actions: {
        click: ({ button, event, instance }) => {
          localStorage.setItem('android-app', instance.options.addDays(14));
          instance.hide();
        }
      }
    },
    agree: {
      type: 'a',
      text: 'Go to site',
      attributes: {
        class: 'btn-primary',
        href: 'https://google.com',
        target: '_blank'
      },
      actions: {
        click: ({ button, event, instance }) => {
          instance.hide();
        }
      }
    }
  },
  addDays: (days) => {
    let date = new Date();
    date.setDate(date.getDate() + days);
    return date.getTime();
  },
  appear: (instance) => {
    const state = new Date() > localStorage.getItem('android-app'),
          ua = new MobileDetect(window.navigator.userAgent), isAndroid = ua.is('Android'),
          link = document.querySelector('#show-only-android');
    
    link.style.display = (!isAndroid ? '' : 'none');
    link.addEventListener('click', (e) => {
      e.preventDefault();
      instance.show();
    });
    
    return isAndroid && state;
  }
}