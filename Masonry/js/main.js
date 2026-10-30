(() => {
  'use strict';
  const $ = (s) => document.querySelector(s);
  // Keep DLE's configured rich editor, but initialise off-screen comments only
  // when the reader approaches the form. Other editors retain their normal lifecycle.
  let activateCommentEditor = null;
  if (window.tinymce && 'IntersectionObserver' in window) {
    const initialise = tinymce.init.bind(tinymce);
    tinymce.init = (options) => {
      const field = options.selector === 'textarea#comments' ? $('#comments') : null;
      if (!field || field.getBoundingClientRect().top <= innerHeight + 600) return initialise(options);
      field.setAttribute('aria-label','Комментарий');
      field.placeholder = 'Ваш комментарий';
      let started = false, requestedFocus = false, resolve, reject;
      const promise = new Promise((done, fail) => { resolve = done; reject = fail; });
      const activate = () => {
        if (!started) {
          started = true; observer.disconnect();
          activateCommentEditor = null;
          initialise(options).then(editors => {
            field.removeEventListener('focus', onFocus);
            if (requestedFocus) editors[0]?.focus();
            resolve(editors);
          }, reject);
        }
        return promise;
      };
      const observer = new IntersectionObserver(entries => {
        if (entries.some(entry => entry.isIntersecting)) activate();
      }, {rootMargin:'600px 0px'});
      const onFocus = () => { requestedFocus = true; activate(); };
      observer.observe(field); field.addEventListener('focus', onFocus);
      activateCommentEditor = activate;
      return promise;
    };
    // Quoting a comment must also work before the main editor has been shown.
    for (const name of ['dle_ins','dle_fastreply']) {
      const original = window[name];
      if (typeof original === 'function') window[name] = function (...args) {
        if (activateCommentEditor && args[1] !== 'pm') {
          activateCommentEditor().then(() => original.apply(this, args));
          return false;
        }
        return original.apply(this, args);
      };
    }
  }
  const toggle = $('#theme-toggle');
  const setTheme = (dark) => {
    document.documentElement.dataset.theme = dark ? 'dark' : 'light';
    document.body.classList.toggle('dark', dark);
    if (toggle) toggle.checked = dark;
    window.tinymce?.get().forEach(editor => { const body = editor.getBody?.(); if (body) body.dataset.theme = dark ? 'dark' : 'light'; });
  };
  setTheme(document.documentElement.dataset.theme === 'dark');
  toggle?.addEventListener('change', () => {
    setTheme(toggle.checked);
    try { localStorage.setItem('masonry-theme', toggle.checked ? 'dark' : 'light'); } catch {}
  });
  const nav = $('.navbar-toggler'), menu = $('#main_nav');
  nav?.addEventListener('click', () => {
    const open = menu.classList.toggle('show');
    nav.setAttribute('aria-expanded', String(open));
    nav.setAttribute('aria-label', open ? 'Закрыть меню' : 'Открыть меню');
  });
  const categories = $('.dropdown-toggle');
  categories?.addEventListener('click', () => {
    const open = categories.getAttribute('aria-expanded') !== 'true';
    categories.setAttribute('aria-expanded', String(open));
    $('#nav-categories').classList.toggle('show', open);
  });
  const search = $('#site-search'), searchButton = $('.search-icon');
  searchButton?.addEventListener('click', () => { search.showModal(); searchButton.setAttribute('aria-expanded','true'); });
  search?.querySelector('.close')?.addEventListener('click', () => search.close());
  search?.addEventListener('close', () => searchButton.setAttribute('aria-expanded','false'));
  const login = $('#div_modal_dle');
  document.querySelectorAll('[data-login-open]').forEach(b => b.addEventListener('click', () => login?.showModal()));
  $('[data-login-close]')?.addEventListener('click', () => login.close());
  document.querySelectorAll('dialog').forEach(dialog => dialog.addEventListener('click', e => {
    if (e.target !== dialog) return;
    const r = dialog.getBoundingClientRect();
    if (e.clientX < r.left || e.clientX > r.right || e.clientY < r.top || e.clientY > r.bottom) dialog.close();
  }));
  document.addEventListener('keydown', e => {
    if (e.key === 'Escape') {
      menu?.classList.remove('show'); nav?.setAttribute('aria-expanded','false');
      $('#nav-categories')?.classList.remove('show'); categories?.setAttribute('aria-expanded','false');
    }
  });
  document.addEventListener('click', e => {
    if (!e.target.closest('.dropdown')) { $('#nav-categories')?.classList.remove('show'); categories?.setAttribute('aria-expanded','false'); }
  });
  const labelGeneratedControls = () => {
    document.querySelectorAll('input:not([type=hidden]),select,textarea').forEach((control, i) => {
      if (control.labels?.length || control.hasAttribute('aria-label') || control.hasAttribute('aria-labelledby') || control.type === 'submit' || control.type === 'button') return;
      const label = control.closest('.form-group')?.querySelector('label');
      const names = {recip:'Получатель сообщения',story:'Слова для поиска',timezones:'Часовой пояс',category:'Категория',sec_code:'Код с картинки',twofactor:'Двухфакторная авторизация'};
      const text = label?.textContent?.trim() || control.placeholder || names[control.name];
      if (text) control.setAttribute('aria-label',text);
    });
  };
  const labelEditor = editor => {
    const apply = () => {
      const frame = editor.iframeElement;
      if (frame) frame.title = editor.id === 'comments' ? 'Редактор комментария' : 'Редактор текста';
      const body = editor.getBody?.();
      if (body) { body.setAttribute('role','textbox'); body.setAttribute('aria-multiline','true'); body.dataset.theme = document.documentElement.dataset.theme || 'light'; }
    };
    editor.on('init', apply); if (editor.initialized) apply();
  };
  if (window.tinymce) { tinymce.on('AddEditor', e => labelEditor(e.editor)); tinymce.editors?.forEach(labelEditor); }
  labelGeneratedControls();
  const onScroll = () => { $('.navbar')?.classList.toggle('navbar-scroll', scrollY > 50); $('.back-top')?.classList.toggle('visible', scrollY > 250); };
  addEventListener('scroll', onScroll, {passive:true}); onScroll();
  $('.back-top')?.addEventListener('click', () => scrollTo({top:0,behavior:matchMedia('(prefers-reduced-motion: reduce)').matches?'instant':'smooth'}));
})();
