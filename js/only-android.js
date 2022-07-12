options = {
  holder: document.querySelector('#only-android'),
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
          instance.setCookie('only-mobile', 1, 14);
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
  appear: (instance) => {
    const ua = new MobileDetect(window.navigator.userAgent), isAndroid = ua.is('Android'),
          link = document.querySelector('#show-only-android');
    
    /*Set position inline*/
    instance.css(instance.popup, {
      position: 'absolute',
      right: 0,
      bottom: 0,
      left: 0
    });
    
    link.style.display = (!isAndroid ? '' : 'none');
    link.addEventListener('click', (e) => {
      e.preventDefault();
      instance.show();
    });
    
    return isAndroid && !instance.getCookie('only-mobile');
  }
}