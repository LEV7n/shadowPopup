class Tabs {
  constructor (tabset) {
    this.links = tabset.querySelectorAll('li > a');
    this.tabs = tabset.querySelectorAll('.tabs .tab');
  
    this.links.forEach((link, i) => {
      link.classList[i === 0 ? 'add' : 'remove']('active');
      link.addEventListener('click', (e) => this.switch(e));
    });
  
    this.tabs.forEach((tab, i) => {
      tab.classList[i === 0 ? 'add' : 'remove']('active');
    });
  }
  
  switch (e) {
    e.preventDefault();
    
    this.links.forEach(link => {
      link.classList[e.target === link ? 'add' : 'remove']('active');
    });
    
    this.tabs.forEach(tab => {
      tab.classList[e.target.getAttribute('href') === '#'+tab.id ? 'add' : 'remove']('active');
    });
  }
}

window.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.tabset')
    .forEach(tabset => new Tabs(tabset));
});