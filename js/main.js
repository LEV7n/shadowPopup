document.addEventListener('DOMContentLoaded', () => {
  const
  
  android = new ShadowPopup({ url: './js/only-android.js' }),
  
  generic = new ShadowPopup({
    shadowParent: document.querySelector('#generic'),
    stylesheets: [
      './css/popup.css',
      '.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'
    ],
    title: '<h1>Google is a search</h1>',
    buttons: {
      disagree: {
        text: 'Not now',
        attributes: {
          class: 'btn-secondary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            instance.hide();
          }
        }
      },
      agree: {
        text: 'Do something',
        attributes: {
          class: 'btn-primary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            alert('Something!');
          }
        }
      }
    },
    appear: () => true
  }),
  
  template = new ShadowPopup({
    shadowParent: document.querySelector('#template'),
    stylesheets: [
      './css/popup.css',
      '.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'
    ],
    template: { url: './tpl/custom-popup.tpl' },
    title: '<h1>Popup with custom template</h1>',
    content: '<p>You can customize it all</p>',
    buttons: {
      disagree: {
        text: 'Not now',
        attributes: {
          class: 'btn-secondary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            instance.hide();
          }
        }
      },
      agree: {
        text: 'Do something',
        attributes: {
          class: 'btn-primary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            alert('I do!');
          }
        }
      }
    },
    appear: () => true
  }),
  
  change = new ShadowPopup({
    shadowParent: document.querySelector('#change'),
    stylesheets: [
      './css/popup.css',
      '.popup { position: fixed; right: 0; bottom: 0; left: 0; z-index: 1001; }'
    ],
    title: '<h1 id="title">This title will be changed</h1>',
    content: '<p id="content">This descriptions will be changed</p>',
    buttons: {
      disagree: {
        text: 'It will be changed too',
        attributes: {
          class: 'btn-secondary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            instance.hide();
          }
        }
      },
      agree: {
        text: 'Change it!',
        attributes: {
          class: 'btn-primary'
        },
        actions: {
          click: ({ button, event, instance }) => {
            instance.options.changeIt(instance);
          }
        }
      }
    },
    changeIt: (instance) => {
      /*Generate random text*/
      const generateRandomString = function (length, randomString = '') {
          randomString += Math.random().toString(20).substr(2, length);
          if (randomString.length > length) return randomString.slice(0, length);
          return generateRandomString(length, randomString);
        },
        strings = {
          title: generateRandomString(24),
          content: generateRandomString(36),
          disagree: generateRandomString(12)
        }
      
      instance.popup.querySelectorAll('*[id]').forEach(el => {
        el.textContent = strings[el.id] || el.textContent;
      });
    },
    appear: () => true
  });
});