/**
 * Tabs
 * Developed By Michael Levinez
 *
 * @class Tabs
 *
 * version 1.0.0
 */
class Tabs {
  /**
   * Init Tabs
   * @param {Object} options
   * @return Tabs
   */
  constructor (tabSet) {
    this.links = tabSet.querySelectorAll('li > a');
    this.tabs = tabSet.querySelectorAll('.tabs .tab-content');
    
    const active = Array.from(this.links)
      .map((f, i) => f.parentNode.matches('.active') ? i : null)
      .filter(f => f)[0];
  
    this.links.forEach((link, i) => {
      link.parentNode.classList[i === (active || 0) ? 'add' : 'remove']('active');
      link.addEventListener('click', (e) => this.#switch(e));
    });
  
    this.tabs.forEach((tab, i) => {
      const current = i === (active || 0);
      tab.style.display = (current ? '' : 'none');
      if (current) this.#load(this.links[i], tab);
    });
  }
  
  #load (link, tab) {
    if (!link.href || tab.shadow) return;
    
    tab.classList.add('loading');
    
    const attach = (content) => {
      tab.shadow = tab.attachShadow({ mode: 'open' });
      tab.shadow.append(content);
    }
    
    fetch(link.getAttribute('href'))
      .then(async (response) => {
        const parser = new DOMParser();
        
        attach(
          parser.parseFromString(
            await response.text(),
            'text/html'
          ).body.querySelector('*')
        );
      })
      .finally(() => tab.classList.remove('loading'));
  }
  
  #switch (e) {
    e.preventDefault();
    
    this.links.forEach(link => {
      link.parentNode.classList[e.target === link ? 'add' : 'remove']('active');
    });
    
    this.tabs.forEach((tab, i) => {
      const current = e.target.getAttribute('rel') === tab.id;
      tab.style.display = (current ? '' : 'none');
      if (current) this.#load(this.links[i], tab);
    });
  }
}

window.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.tab-set')
    .forEach(tabSet => new Tabs(tabSet));
});