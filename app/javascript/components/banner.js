import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Not anylonger", "Mix yourself one of those"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
